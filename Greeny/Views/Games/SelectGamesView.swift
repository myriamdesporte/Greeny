//
//  SelectGamesView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//
//
// Cette vue correspond à la page de sélection des jeux.


import SwiftUI

struct SelectGamesView: View {
    
    @Environment(\.dismiss) var dissmiss
    
    @Binding var currentQuestionIndex: Int
    @Binding var numberOfCorrectAnswers: Int
    @Binding var questionNumber: Int
    @Binding var availablePlants: [LockedPlant]
    @Binding var indexOfLockedPlant: Int
    @State var isAnimating: Bool = false

    
    @Binding var isActive : Bool

    var body: some View {
        ZStack {
            BackgroundSelectGamesView()
            
            VStack {
                
                Spacer()
                ZStack {
                    Image(.cadreVide)
                    
                    NavigationLink {
                        QuizView(numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber, currentQuestionIndex: $currentQuestionIndex, availablePlants: $availablePlants, isActive: $isActive, indexOfLockedPlant: $indexOfLockedPlant)
                        
                    } label: {
                        QuizGameIconView()
                    }
                    
                }
                
                ZStack {
                    Image(.cadreVide)
                    
                    NavigationLink {
                        PairsGameView(availablePlants: $availablePlants, indexOfLockedPlant: $indexOfLockedPlant, isActive: $isActive)
                    } label: {
                        PairsGameIconView()
                    }
                }
                
                Spacer()
                Spacer()
                
            }.padding()
            
            
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            dissmiss()
                            
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .foregroundColor(.clear)//marron
                                    .frame(width: 54, height: 40)
                                
                                Image(systemName: "arrowshape.turn.up.backward")
                                    .font(.system(size: 20))
                                    .padding()
                                    .foregroundColor(.marron)//jaune
                                    
                            }
                        }
                        .navigationBarBackButtonHidden()
                    }
             
                }
            
            
        }
    }
}

#Preview {
    NavigationView { SelectGamesView(currentQuestionIndex: .constant(1), numberOfCorrectAnswers: .constant(1), questionNumber: .constant(1), availablePlants: .constant([]), indexOfLockedPlant: .constant(1), isActive: .constant(false))
    } }
