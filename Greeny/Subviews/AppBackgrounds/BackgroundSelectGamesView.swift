//
//  BackgroundSelectGamesView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct BackgroundSelectGamesView: View {
    var body: some View {
        ZStack {
            Image(.backgroundHome)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 2)
        
        }
    }
}

#Preview {
    BackgroundSelectGamesView()
}
