//  QuestionView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct QuestionView: View {
    
    @Environment(\.dismiss) var dissmiss
    
    @State var selectedAnswer: String = ""
    @State var isAnswerCorrect: Bool = false
    @State var showResult: Bool = false
    
    @Binding var currentQuestionIndex: Int
    @Binding var numberOfCorrectAnswers: Int
    @Binding var questionNumber: Int
    @Binding var isActive: Bool
    @Binding var indexOfLockedPlant: Int
    @Binding var availablePlants: [LockedPlant]
    
    
    
    
    var body: some View {
        
        VStack{
            
            //  Spacer().frame(height: 50)
            
            //Test nombre de questions correctes et contenu du tableau d'espèces disponibles
            
            // Text("Bonnes réponses: \(numberOfCorrectAnswers)")
            
            //   Text("Combien de plantes tableau: \(availablePlants.count)")
            
            // Image correspondante à la question
            
            ZStack{
                //                Rectangle()
                //                    .frame(width: 185, height: 185)
                //                    .foregroundColor(Color.marron)
                
                Image(questions[currentQuestionIndex].questionImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                //.background(.white)
                    .padding(4)
                //                    .overlay(RoundedRectangle(cornerRadius: 20)
                //                        .stroke(Color.marron, lineWidth: 2.5))
                    .padding()
            }
            
            
            //Texte de la question
            Text(questions[currentQuestionIndex].questionTitle)
                .foregroundStyle(Color.marron)
                .font(.title2)
                .fontWeight(.bold)
            
            
            // Liste: affichage des réponses sélectionnables: parmi toutes les réponses (answers) de la question actuelle (currentQuestionIndex), afficher un bouton avec le nom de la réponse qui devient vert si la réponse est sélectionnée
            List(Array(questions[currentQuestionIndex].answers.enumerated()), id: \.element) {index, answer in
                
                Button(action: {
                    selectedAnswer = answer
                    // En actionnant le bouton, la réponse devient "la réponse sélectionnée".
                }, label: {
                    HStack {
                        Text("\(index + 1).")  // Numérotation des réponses
                            .foregroundStyle(Color.marron)
                            .fontWeight(.bold)
                            .font(.title2)
                        
                        Text(answer)
                            .foregroundStyle(Color.marron)
                            .fontWeight(.bold)
                            .font(.title3)
                            .padding(8)
                        // .background(selectedAnswer == answer ? Color.orange.opacity(0.2) : Color.clear) // Couleur derrière chaque élément
                        
                            .cornerRadius(15)
                    }
                })
                .listRowBackground(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(selectedAnswer == answer ? Color.orange.opacity(0.2) : Color.white)
                        .padding(2)) // Encadre chaque réponse dans un fond blanc
                
                //                .listRowBackground(Color.clear) // Supprime le fond blanc derrière chaque élément
                
            }
            .scrollContentBackground(.hidden) // Cache le fond de la liste
            .background(Color.clear) // Rendre le fond de la liste transparent
            //Fin de la liste
            
            
            Spacer()
            
            // Bouton valider
            Button(action: {
                if selectedAnswer == questions[currentQuestionIndex].correctAnswer {
                    isAnswerCorrect = true
                    numberOfCorrectAnswers += 1
                } else {
                    isAnswerCorrect = false
                }
                
                
                
                showResult = true //Renvoie un booléen qui permettra d'afficher ensuite le modal correspondant (bonne ou mauvaise réponse)
                
                selectedAnswer = ""
            }, label: {
                
                GamesButtonView(myText: "C\'est ma réponse !", isBold: true, isTitle: false)
            }).disabled(selectedAnswer == "")
            // Fin du bouton valider
            
            
            
            // Apparition de la modale de Bonne ou Mauvaise réponse
                .sheet(isPresented: $showResult, content: {
                    
                    // Vue résultat du quizz
                    //Text("Réponse: \(isAnswerCorrect)")
                    
                    ResultQuizView(currentQuestionIndex: $currentQuestionIndex, isAnswerCorrect: $isAnswerCorrect, questionNumber: $questionNumber, isActive: $isActive)
                    
                    
                        .presentationDetents([.height(485)]) // Hauteur de la modale
                        .interactiveDismissDisabled(true)
                })
            //Fin de la modale Bonne ou Mauvaise réponse
            
        }.padding()
        
        //        .navigationTitle("Question \(questionNumber) / \(numberOfQuestionsInQuiz)")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Question \(questionNumber) / \(numberOfQuestionsInQuiz)")
                        .font(.system(size: 20, weight: .bold)) // Met le titre en gras
                        .foregroundColor(.marron) // Change la couleur du texte
                }
                
                
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
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        
                        isActive = false
                        
                    }, label: {
                        
                        ZStack{
                            Circle()
                                .foregroundColor(.vertFonce)
                                .frame(width: 44)
                            
                            Image(systemName: "house.fill")
                                .font(.system(size: 20))
                            
                                .padding()
                                .foregroundColor(.jaune)
                        }
                    })
                    
                }
                
            }
    }
}

#Preview {
    NavigationView{ QuestionView(currentQuestionIndex: .constant(2), numberOfCorrectAnswers: .constant(1), questionNumber: .constant(3), isActive: .constant(false), indexOfLockedPlant: .constant(0), availablePlants: .constant([]))
    }}
