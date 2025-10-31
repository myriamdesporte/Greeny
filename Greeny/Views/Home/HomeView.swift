//
//  HomeView$.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

// Cette vue Ã  notre page principale, notre page Parent.

import SwiftUI

struct HomeView: View {
    
    @State private var availablePlants: [LockedPlant] = []
    @State var indexOfLockedPlant: Int = 0
    @State var currentQuestionIndex: Int = 0
    @State var isActive: Bool = false
    @State var numberOfCorrectAnswers: Int = 0
    @State var questionNumber: Int = 1
    @State var isAnimating: Bool = false

    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                BackgroundHomeView()
                
                VStack {
                    Image(.titreGreeny)
                     
                    HStack {
                        
                    }
                    NavigationLink(
                        destination: SelectGamesView(currentQuestionIndex: $currentQuestionIndex, numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber, availablePlants: $availablePlants, indexOfLockedPlant: $indexOfLockedPlant, isActive: $isActive),
                        
                        isActive: $isActive){
                            HomeButtonView(myText: "Jouer", isBold: true, isTitle: true)
                        
                                .rotationEffect(.degrees(isAnimating ? -2 : 2))
                                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isAnimating)

                        }
                    .isDetailLink(false)
                    .onAppear {
                        isAnimating = true
                    }

                    
//                    NavigationLink {
//                        SelectGamesView(unlockedPlants: $unlockedPlants)
//                    } label : {
//                        HomeButtonView(myText: "Jouer", isBold: true, isTitle: true)
//                    }
                    
                    
                    NavigationLink {
                        GardenMenuView(isActive: $isActive, availablePlants: $availablePlants, numberOfCorrectAnswers: $numberOfCorrectAnswers, questionNumber: $questionNumber)
                    } label: {
                        SecondButtonHomeView(myText: "Jardin", isBold: true, isTitle: true)
                    }
                    
                    Spacer()
                    
                    HStack(){
                        GreenyHomeView()
                        Spacer() // Pour pousser l'image vers la gauche
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
