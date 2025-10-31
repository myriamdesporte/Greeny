//  QuizView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//
// Cette vue correspond au jeu du Quiz avec l'apparition des questions avec les images.

import SwiftUI

struct QuizView: View {
    
    
    @Binding var numberOfCorrectAnswers: Int
    @Binding var questionNumber: Int
    @Binding var currentQuestionIndex: Int
    @Binding var availablePlants: [LockedPlant]
    @Binding var isActive: Bool
    @Binding var indexOfLockedPlant: Int
    
    var body: some View {
        
        ZStack{
            
            // Fond d'ecran
            if questionNumber <= numberOfQuestionsInQuiz {
                BackgroundGamesView()
            } else {
                LinearGradient(colors: [.beige, .orange.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            }
            
            VStack{
                
                Spacer()
                
                if questionNumber <= numberOfQuestionsInQuiz {
                    
                    QuestionView(currentQuestionIndex: $currentQuestionIndex, numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber, isActive: $isActive, indexOfLockedPlant: $indexOfLockedPlant, availablePlants: $availablePlants)
                    
                } else {
                    EndQuizView(currentQuestionIndex: $currentQuestionIndex, numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber, isActive: $isActive, indexOfLockedPlant: $indexOfLockedPlant, availablePlants: $availablePlants)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                }
            }
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    QuizView(numberOfCorrectAnswers: .constant(1), questionNumber: .constant(1), currentQuestionIndex: .constant(1), availablePlants: .constant([]), isActive: .constant(false), indexOfLockedPlant: .constant(1))
}
