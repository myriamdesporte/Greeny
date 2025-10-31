//
//  Test.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct RectangleButtonView: View {
    
    var myText: String
    var isBold: Bool
    var isTitle: Bool
    @State var isAnimating: Bool = false
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 60)
                .foregroundColor(.jaune)
                .cornerRadius(7)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.marron, lineWidth: 0.4))
            HStack {
                Text(myText)
               .foregroundColor(.vertFonce)
               .font(.system((isTitle ? .title : .title2), design: .rounded))
               .fontWeight(isBold ? .black : nil)
            }
            
        }
    }
}

#Preview {
    RectangleButtonView(myText: "Rejouer", isBold: true, isTitle: true)
}
