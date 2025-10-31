//
//  BackgroundGamesView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//
// Cette vue correspond au fond d'écran des pages de jeux.

import SwiftUI

struct BackgroundGamesView: View {
    var body: some View {
       
            ZStack {
                Image(.backgroundGames)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 5)
                
                Rectangle()
                    .fill(Color.white)
                    .opacity(0.8)
                
                
            }.ignoresSafeArea()
            
        
        
    }
}

#Preview {
    BackgroundGamesView()
}
