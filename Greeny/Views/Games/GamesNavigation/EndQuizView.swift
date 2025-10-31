//
//  EndQuizView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct EndQuizView: View {
    
    @State var isNavigatingToJardin: Bool = false
    @Binding var currentQuestionIndex: Int
    @Binding var numberOfCorrectAnswers: Int
    @Binding var questionNumber: Int
    @Binding var isActive: Bool
    @Binding var indexOfLockedPlant: Int
    @Binding var availablePlants: [LockedPlant]
    
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.beige, .orange.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            VStack{
                Text("Bravo, tu as terminé le quiz!")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.marron)
                    .font(.system(size: 20, design: .rounded))
                    .padding()
                
                Image(numberOfCorrectAnswers < 2 ? .greenyNormal: .greenyHeureux) // MARK: Valeur modifiées pour la démo 1
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipped()
                
                VStack (alignment: .leading){
                    Text(numberOfCorrectAnswers < 2 ?
                         "Tu as obtenu \(numberOfCorrectAnswers) bonne réponse." : "Tu as obtenu \(numberOfCorrectAnswers) bonnes réponses.")
                    .foregroundStyle(Color.vertFonce)
                    .font(.system(size: 24, design: .rounded))
                    .bold()
                    .padding(.vertical)
                    
                    //ScrollView {
                    switch numberOfCorrectAnswers {
                        // MARK: Valeur modifiées pour la démo 2
                  //case 0...4:
                    case 0...1:
                        Text("Dommage, tu n'étais pas loin de débloquer un badge!\n \nMais pas d\'inquiétude! C\'est en essayant qu'on apprend ! Retente ta chance!")
//                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.marron)
                            .bold()
                            .font(.system(size: 18, design: .rounded))
                        
                  //case 5...7:
                    case 2...4:
                        
                        Text("C\'est un super travail !\n \nTu as réussi à débloquer 1 nouveau badge")
//                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.marron)
                            .font(.system(size: 18, design: .rounded))
                            .bold()
                        
                //  case 8...9:
//                    case 8...9:
//                        Text("C\'est excellent !\n \nTu as réussi à débloquer 2 nouvelles espèces dans ton jardin!")
////                            .multilineTextAlignment(.leading)
//                            .foregroundStyle(Color.marron)
//                            .font(.system(size: 20, design: .rounded))
                    
                // Il faudra remettre 3 juste en dessous.
                    default:
                        Text("Incroyable, tu as tout bon ! \n \nFélicitations! Tu vient de débloquer 2 nouveaux badges!")
//                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color.marron)
                            .font(.system(size: 18, design: .rounded))
                            .bold()
                    }
                    
                }.padding(.bottom)
                
                Spacer()
                Button(action: {
                    
                    addPlantsInGardenForDemo()
                    // addPlantsInGarden()
                    
                    questionNumber = 1
                    numberOfCorrectAnswers = 0
                    
                    if currentQuestionIndex > 18{
                        currentQuestionIndex = 0
                    }
                    
                }, label: {
                    GamesButtonGreenView(myText: "Rejouer", isBold: true, isTitle: false)
                })
                
                
                Button(action: {
                    
                    isNavigatingToJardin = true
                   // addPlantsInGarden()
                    addPlantsInGardenForDemo()

                    
                    
                }, label: {
                    
                    TransparentButtonView(myText: "Aller au jardin", isBold: true, isTitle: false)
                })
                
                
                NavigationLink(destination: GardenMenuView(isActive: $isActive, availablePlants: $availablePlants, numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber),
                               isActive: $isNavigatingToJardin)
                {
                    EmptyView() // Vue vide, car le bouton contrôle la navigation
                }
                
                Spacer()
                
                
            }
            .padding()
            
            // MARK: Bouton HOME
            .toolbar {ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    
                   // addPlantsInGarden()
                    addPlantsInGardenForDemo()

                    
                    questionNumber = 1
                    numberOfCorrectAnswers = 0
                    
                    if currentQuestionIndex > 18{
                        currentQuestionIndex = 0
                    }
                    
                    isActive = false
                    
                }, label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(.clear)
                            .frame(width: 54, height: 40)
                        
                        Image(systemName: "house")
                            .font(.system(size: 25))
                        
                            .padding()
                            .foregroundColor(.vertFonce)
                    }
                })
                
            }
            }
        }
        
        .navigationBarBackButtonHidden()
    }
    
    
    func addPlantsInGarden(){
        if numberOfCorrectAnswers == 10 {
            indexOfLockedPlant += 3
            
            availablePlants.append(plants[indexOfLockedPlant - 3])
            availablePlants.append(plants[indexOfLockedPlant - 2])
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        } else if numberOfCorrectAnswers > 7 {
            indexOfLockedPlant += 2
            
            availablePlants.append(plants[indexOfLockedPlant - 2])
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        } else if numberOfCorrectAnswers > 3 {
            indexOfLockedPlant += 1
            availablePlants.append(plants[indexOfLockedPlant - 1])
        }
    }
    
    func addPlantsInGardenForDemo(){
        if numberOfCorrectAnswers == 5 {
            indexOfLockedPlant += 2
            
            availablePlants.append(plants[indexOfLockedPlant - 2])
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        } else if numberOfCorrectAnswers > 1 {
            indexOfLockedPlant += 1
            
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        }
    }
}

#Preview {
    EndQuizView(currentQuestionIndex: .constant(0), numberOfCorrectAnswers: .constant(2), questionNumber: .constant(5), isActive: .constant(false), indexOfLockedPlant: .constant(1), availablePlants: .constant([]))
}
