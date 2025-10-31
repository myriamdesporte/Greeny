//
//  cadrePairsGamesView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct QuizGameIconView: View {
    var body: some View {
        ZStack {
            Image(.iconeQuiz)
                .resizable()
                .scaledToFill()
                .padding(.top, 10)
                .padding(.leading, 25)
                .frame(width: 220, height: 190)
                .cornerRadius(10)
            
        }
    }
}

#Preview {
    QuizGameIconView()
}
