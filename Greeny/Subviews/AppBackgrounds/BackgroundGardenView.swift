//
//  BackgroundGardenView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

// Cette vue correspond au fond d'écran des pages du jardin.


import SwiftUI

struct BackgroundGardenView: View {
    var body: some View {
        VStack {
            ZStack {
                Image(.backgroundHome)
                    .resizable()
                    .scaledToFill()
                .blur(radius: 4)
                
              
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundGardenView()
}
