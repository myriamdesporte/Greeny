//
//  ButtonBackToHomeView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct ButtonBackToHomeView: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action() // Exécuter l'action passée en paramètre
        }) {
            ZStack {
                Circle()
                    .foregroundColor(.vertFonce)
                    .frame(width: 40, height: 40)
                
                Image(systemName: "house.circle.fill")
                    .padding()
                    .foregroundColor(.jaune)
                    .font(.largeTitle)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ButtonBackToHomeView {
        print("Returning to HomeView") // Exemple d'action
    }
}
