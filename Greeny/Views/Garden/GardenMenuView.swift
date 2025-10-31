//
//  GardenMenuView.swift
//  GreenyAppLouGabian
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct GardenMenuView: View {
    @Environment(\.dismiss) var dissmiss
    
    @Binding var isActive: Bool
    @Binding var availablePlants: [LockedPlant]
    @Binding var numberOfCorrectAnswers: Int
    @Binding var questionNumber: Int
    
    
    var body: some View {
        
        
        
        ZStack {
            BackgroundGardenView()
            
            
            
            VStack(spacing: -100) {
                
                
                //MARK: Bouton pour les Arbustes
                
                Spacer()
                
                //Bouton Arbustes
                NavigationLink {
                    CarrouselView( especes: arbustes, title: "Arbustes")
                } label : {
                    GamesButtonGreenView(myText: "Arbustes", isBold: true, isTitle: true)
                }
                
                Spacer()
                
                //Bouton Arbres
                NavigationLink {
                    CarrouselView( especes: arbres, title: "Arbres")
                } label : {
                    GamesButtonGreenView(myText: "Arbres", isBold: true, isTitle: true)
                }
                
                Spacer()
                
                //Bouton Fleurs
                NavigationLink {
                    CarrouselView(especes: fleurs, title: "Fleurs")
                } label : {
                    GamesButtonGreenView(myText: "Fleurs", isBold: true, isTitle: true)
                }
                
                Spacer()
                
                //Bouton Champignons
                NavigationLink {
                    CarrouselView( especes: champignons, title: "Champignons")
                } label : {
                    GamesButtonGreenView(myText: "Champignons", isBold: true, isTitle: true)
                }
                
                Spacer()
                Spacer()
                NavigationLink {
                    AvailablePlantsView(availablePlants: $availablePlants)
                } label : {
                    RectangleButtonView(myText: "Mes Badges", isBold: true, isTitle: true)
                }
                
                Spacer()
                
                
            }
            .padding()
            //                .navigationTitle("Catalogue")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        questionNumber = 1
                        numberOfCorrectAnswers = 0
                        isActive = false
                        dissmiss()
                        
                    }) {
                        ZStack {
                            Circle()
                                .foregroundColor(.vertFonce)
                                .frame(width: 35, height: 35)
                                
                            
                            Image(systemName: "house.circle.fill")
                                .font(.system(size: 35))
                                .padding()
                                .foregroundColor(.jaune)
                        }
                    }
                }

            }
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

#Preview {
    NavigationView {
        GardenMenuView(isActive: .constant(false), availablePlants: .constant([]), numberOfCorrectAnswers: .constant(1), questionNumber: .constant(1))
    }}
