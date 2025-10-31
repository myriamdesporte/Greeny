//
//  GreenyHomeView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct GreenyHomeView: View {
    var body: some View {
        Image(.greenyNormal)
            .resizable()
            .padding()
            .scaledToFill()
            .frame(width: 150, height: 200)
    }
}

#Preview {
    GreenyHomeView()
}
