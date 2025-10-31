//
//  BackgroundHomeView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.

// Cette vue correspond au fond d'écran de la page Home.
//

import SwiftUI

struct BackgroundHomeView: View {
    var body: some View {
        ZStack {
            Image(.backgroundHome)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        
        }
    }
}

#Preview {
    BackgroundHomeView()
}
