//
//  ResultQuizView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct ResultQuizView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var currentQuestionIndex: Int
    
    @Binding var isAnswerCorrect: Bool
    
    @Binding var questionNumber : Int
    
    @Binding var isActive : Bool
    
    // @Binding var showResultFinalBinding: Bool
    
    
    var body: some View {
        
        ZStack{
            // Color.marron
            LinearGradient(colors: [.beige, .orange.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
           
            ScrollView{
            VStack{
                
                HStack{
                    Image(isAnswerCorrect ? .greenyHeureux : .greenyTriste)
                        .resizable()
                        .scaledToFill()
                        .frame(width:110, height: 110)
                    
                    Text(isAnswerCorrect ? "Bravo !" : "Oups !")
                        .foregroundStyle(Color.vertFonce)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .padding()
                }
                
                
                
                    VStack (alignment: .leading){
                        
                        Text(isAnswerCorrect ? "Bonne réponse!" : "Réponse attendue: \n\(questions[currentQuestionIndex].correctAnswer)")
                            .foregroundStyle(Color.vertFonce)
//                            .foregroundStyle(isAnswerCorrect ? Color.vertFonce : .red)
                            .fontWeight(.bold)
                            .font(.system(size: 20, design: .rounded))
                        
                        Text(questions[currentQuestionIndex].additionnalInfo)
                            .foregroundStyle(Color.marron)
                            .font(.system(size: 20, design: .rounded))
                            .padding(.vertical)
                            
                    }.padding()
                }
                    
                    
                
                
                Button(action: {
                    
                    currentQuestionIndex += 1
                    
                    questionNumber += 1
                    
                    dismiss()
                    
                }, label: {
                    GamesButtonGreenView(myText: "On continue!", isBold: true, isTitle: false)
     
                })
            }
            .padding()
        }
    }
}


#Preview {
    ResultQuizView(currentQuestionIndex: .constant(0), isAnswerCorrect: .constant(false), questionNumber: .constant(3), isActive: .constant(false))
}
