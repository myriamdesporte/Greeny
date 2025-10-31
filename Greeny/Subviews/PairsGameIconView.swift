//
//  cadrePairsGameView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct PairsGameIconView: View {
    var body: some View {
        ZStack {
            
            Image(.iconeJeuDesPaires)
                .resizable()
                .scaledToFit()
                .padding(.top, 10)
                .padding(.leading, 25)
                .frame(width: 220, height: 200)
        }
    }
}

#Preview {
    PairsGameIconView()
}
