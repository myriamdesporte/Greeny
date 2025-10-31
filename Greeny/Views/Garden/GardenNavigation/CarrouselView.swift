//
//  CarrouselView.swift
//  GreenyAppLouGabian
//
//  Created by Jonathan Gusse on 19/09/2024.
//

import SwiftUI

struct CarrouselView: View {
    //MARK: Variables d'état et autres
    @State private var selectedEspece: Espece? = nil // Pour la gestion de l'affichage des détails
    @State private var scrollViewProxy: ScrollViewProxy? // Pour revenir en haut du ScrollView
    
    @Namespace private var animation
    
    @Environment(\.dismiss) var dissmiss
    
    // Constantes
    let especes: [Espece]
    let title: String
    let transitionDuration: Double = 1 // Durée de la transition
    let returnTransitionDuration: Double = 0.3 // Durée de la transition de retour
    
    //MARK: Body
    var body: some View {
        VStack {
            
            
            ZStack {
                
                BackgroundGardenView()
                
                if selectedEspece == nil {
                    // MARK: Carrousel horizontal en première condition
                    ScrollViewReader { proxy in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(especes) { espece in
                                    Button(action: {
                                        withAnimation(.easeInOut) {
                                            selectedEspece = espece
                                            proxy.scrollTo(espece.id, anchor: .center)
                                        }
                                    }) {
                                        VStack {
                                            Image(espece.image)
                                                .resizable()
                                                .frame(width: 300, height: 300) // Ajustement Taille Ici
                                                .clipShape(RoundedRectangle(cornerRadius: 40)) // Bords ronds
                                                .matchedGeometryEffect(id: espece.id, in: animation)
                                                .animation(.easeInOut, value: selectedEspece)
                                            
                                            Text(espece.nom)
                                                .font(.title)
                                                .fontWeight(.black)
                                                .foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                    .padding(.top, 20)
                                    .id(espece.id)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                } else {
                    // MARK: Afficher les informations de l'espèce sélectionnée
                    
                    
                    VStack {
                        
//                        Spacer(minLength: 0)
                        // Geste pour revenir au Carrousel sur le texte avec onTapGesture
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 320, height: 40)
                                .foregroundColor(.jaune)
                                .cornerRadius(7)
                                .overlay(RoundedRectangle(cornerRadius: 7)
                                    .stroke(Color.yellow, lineWidth: 2))
                            
                            Text("Retour aux Plantes")
                                .foregroundColor(.vertFonce)
                                .font(.title2)
                                .fontWeight(.black)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: returnTransitionDuration)) {
                                selectedEspece = nil
                            }
                        }
                        
                        
                       //Séparation de la ScrollView dans une vue différente pour éliminer le probléme d'état du Scroll
                        if let espece = selectedEspece {
                            EspeceDetailsView(espece: espece)
                        }
                        
                        
                        
                        
                        
                    }
                    .padding(.top, 100)
                    .frame(maxWidth: .infinity)
                    .transition(.opacity) // Animation douce de transition
                    .animation(.easeInOut(duration: transitionDuration), value: selectedEspece) // Durée de l'animation
//                    .padding(.top, 80)
//                    .edgesIgnoringSafeArea(.bottom)
                }
            }
//            .navigationTitle(title) // Titre dans la barre de navigation
            .navigationBarTitleDisplayMode(.inline) // Pour un titre centré dans la barre de navigation
            
            //Personalisation plus poussée de la barre de navigation
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dissmiss()
                    }) {
                        ZStack {
                            Circle()
                                .foregroundColor(.vertFonce)
                                .frame(width: 40, height: 40)
                            
                            Image(systemName: "book.fill")
                                .font(.system(size: 20))
                                .padding()
                                .foregroundColor(.jaune)
                        }
                    }
                }
                
                ToolbarItem(placement: .principal) { // Placement du titre personnalisé
                    Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CarrouselView(
        especes: arbustes,
        title: "Arbustes"
    )
}
