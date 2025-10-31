//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.


import SwiftUI

struct PairsGameView: View {
    @State private var currentPlants: [LockedPlant] = Array(plants.prefix(3))
    @State private var selectedImageIndex: Int? = nil
    @State private var selectedPlantName: String? = nil
    @State private var selectedMatches: [UUID: Bool] = [:]
    @State private var showFeedbackMessage = false
    @State private var feedbackText: String = ""
    @State private var correctAnswerCount: Int = 0
    @State private var totalAnswered: Int = 0
    @State private var showFinalResult = false
    @State private var isLastPage = false
    @State private var showTitle = true
    @State private var currentPageIndex = 0
    @State private var previouslyShownPages: Set<[String]> = []
    @State private var clickedImageIndices: Set<Int> = []
    @State private var showGreenyIntro = true
    @State private var greenyScale: CGFloat = 0.1
    
    @Binding var availablePlants: [LockedPlant]
    @Binding var indexOfLockedPlant: Int
    
    @Binding var isActive: Bool
    @Environment(\.dismiss) var dissmiss

    
    let nameOrderPatterns: [[Int]] = [
        [2, 0, 1],
        [1, 2, 0],
        [0, 1, 2]
    ]
    
    var body: some View {
        ZStack {
            BackgroundGamesView()
            
            if showGreenyIntro {
                introView
            } else {
                gameView
            }
        } .navigationBarBackButtonHidden()
    }
    
    var introView: some View {
        VStack {
            Text("Coucou, on va jouer ensemble!")
                .font(.title2)
                .foregroundColor(.marron)
                .cornerRadius(10)
            
            Image("GreenyNormal")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .scaleEffect(greenyScale)
                .animation(.easeInOut(duration: 0.3), value: greenyScale)
                .onAppear {
                    greenyScale = 1.0
                }
            Text("Relie chaque plante avec son nom!")
                .font(.title2)
                .foregroundColor(.marron)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                .cornerRadius(10)
                .padding()
            Button(action: {
                withAnimation {
                    showGreenyIntro = false
                }
            }) {
                GamesButtonView(myText: "C'est parti !", isBold: true, isTitle: true)
            }
            .padding(.top, 50)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white.opacity(0.1))
        .transition(.opacity)
    }
    
    var gameView: some View {
        VStack {
            
            // Affiche la bulle d'aide sur la première page
            if currentPageIndex == 0 {
                helpBubble
                    .padding(.top)
            }
            
            ForEach(0..<3) { index in
                plantRowView(for: index)
            }
            
            Spacer()
            
            if showFeedbackMessage {
                Text(feedbackText)
                    .font(.title)
                    .foregroundColor(feedbackText == "Bravo!!" ? .marron : .marron)
                    .fontWeight(.black)
                    .padding()
            }
            
            if isLastPage && showFinalResult {
                resultView
            }
            
            continueButton
        }
        .padding()
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
    
    var helpBubble: some View {
        Text("Choisis d'abord l'image, puis le nom !")
            .foregroundColor(.marron)
            .font(.headline)
            .padding()
            .background(Color.beige.opacity(0.8))
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding()
    }
    
    func plantRowView(for index: Int) -> some View {
        HStack {
            // Bouton de l'image à gauche
            Button(action: {
                // Ajoute l'indice à l'ensemble et sélectionne l'image
                clickedImageIndices.insert(index)
                selectedImageIndex = index
            }) {
                ZStack {
                    Image("boutonPairsGame") // Bouton personnalisé dans vos assets
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    // Effet de surbrillance jaune vif
                    if clickedImageIndices.contains(index) {
                        Circle()
                            .fill(Color.jaune)
                            .frame(width: 20, height: 20)
                            .overlay(
                                Rectangle()
                                    .stroke(Color.yellow, lineWidth: 5) // Bordure jaune plus épaisse pour rendre l'effet plus visible
                            )
                    }
                    
                    if let isSelectedCorrect = selectedMatches[currentPlants[index].id] {
                        if isSelectedCorrect {
                            // Ajoute un reflet vert pour une bonne réponse
                            Image("Checkmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        } else {
                            // Utilisation de l'image "Xmark" des assets pour une mauvaise réponse
                            Image("Xmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        }
                    }
                }
            }
            
            // Image de la plante à droite du bouton
            Image(currentPlants[index].plantImage)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .frame(alignment: .center)
            
            // Spacer pour espacer les images et les noms
            Spacer()
            
            // Nom de la plante
            let nameIndex = nameOrderPatterns[currentPageIndex % 3][index]
            Text(currentPlants[nameIndex].plantName)
                .foregroundColor(.marron)
            
            // Bouton du nom
            Button(action: {
                if let selectedImageIndex = selectedImageIndex {
                    selectedPlantName = currentPlants[nameIndex].plantName
                    checkAnswer(for: selectedImageIndex, selectedName: currentPlants[nameIndex].plantName)
                    self.selectedImageIndex = nil
                    
                    // Réinitialiser le bouton d'image cliqué si nécessaire
                    clickedImageIndices.removeAll() // Réinitialise l'ensemble
                    if selectedMatches.count == 3 {
                        checkFeedback()
                    }
                }
            }) {
                ZStack {
                    Image("boutonPairsGame") // Bouton personnalisé dans vos assets
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    if let isSelectedCorrect = selectedMatches[currentPlants[nameIndex].id] {
                        if isSelectedCorrect {
                            // Reflet vert pour une bonne réponse
                            Image("Checkmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        } else {
                            // Utilisation de l'image "Xmark" des assets pour une mauvaise réponse
                            Image("Xmark")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
    
    // MARK: PAGE FIN DU JEU
    var resultView: some View {
        VStack {
            Text("Vous avez \(correctAnswerCount) bonnes réponses sur \(totalAnswered)")
                .font(.title2)
                .padding()
            
            if correctAnswerCount >= totalAnswered / 2 {
                Text("Super travail!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.vertFonce)
                    .padding()
            } else {
                Text("Essayez encore !")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
    
    var continueButton: some View {
        Button(action: {
            
            addPlantsInGarden()
            if isLastPage {
                showFinalResult = true
            } else {
                nextPlants()
            }
        }) {
            GamesButtonView(myText: "Continuer !", isBold: true, isTitle: false)
        }
        .padding(10)
        .disabled(selectedMatches.count < 3)
    }
    
    func checkAnswer(for index: Int, selectedName: String) {
        let plant = currentPlants[index]
        
        if selectedName == plant.plantName {
            selectedMatches[plant.id] = true
            correctAnswerCount += 1
        } else {
            selectedMatches[plant.id] = false
        }
        
        totalAnswered += 1
    }
    
    func checkFeedback() {
        let correctAnswers = selectedMatches.filter { $0.value == true }.count
        
        if correctAnswers >= 2 {
            feedbackText = "Bravo!!"
        } else {
            feedbackText = "Oups!"
        }
        
        showFeedbackMessage = true
    }
    
    func nextPlants() {
        let currentIndex = plants.firstIndex(where: { $0.id == currentPlants.last?.id }) ?? 0
        let newPlants = Array(plants[currentIndex+1..<min(currentIndex+4, plants.count)])
        
        // Vérifie que cette combinaison de plantes n'a pas déjà été affichée et que ce n'est pas la dernière page
        let newPlantNames = newPlants.map { $0.plantName }
        if !newPlants.isEmpty && previouslyShownPages.contains(newPlantNames) {
            nextPlants() // Saute cette combinaison et va à la suivante
        } else {
            if newPlants.isEmpty {
                isLastPage = true
            } else {
                currentPlants = newPlants
                currentPageIndex += 1
                previouslyShownPages.insert(newPlantNames)
            }
        }
        
        showFeedbackMessage = false
        selectedMatches.removeAll()
        selectedImageIndex = nil
        selectedPlantName = nil
    }
    
    func addPlantsInGarden(){
        if correctAnswerCount == 30 {
            indexOfLockedPlant += 3
            
            availablePlants.append(plants[indexOfLockedPlant - 3])
            availablePlants.append(plants[indexOfLockedPlant - 2])
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        } else if correctAnswerCount > 19 {
            indexOfLockedPlant += 2
            
            availablePlants.append(plants[indexOfLockedPlant - 2])
            availablePlants.append(plants[indexOfLockedPlant - 1])
            
        } else if correctAnswerCount > 9 {
            indexOfLockedPlant += 1
            availablePlants.append(plants[indexOfLockedPlant - 1])
        }
    }

}

#Preview {
    NavigationView {
        PairsGameView(availablePlants: .constant([]), indexOfLockedPlant: .constant(1), isActive: .constant(false))
    }
}
