//
//  SecondButtonHomeView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct SecondButtonHomeView: View {
    
    var myText: String
    var isBold: Bool
    var isTitle: Bool
    
    var body: some View {
        
        
        ZStack {
            HStack {
                Text(myText)
                    .font(.system((isTitle ? .title : .title2), design: .rounded))
                    .fontWeight(isBold ? .black : nil)
                Image(systemName: "camera.macro")

                
                
            }.foregroundColor(.jaune)
                .padding(.horizontal, 60)
                .padding(.vertical, 15)
                .background(.vertFonce)
                .cornerRadius(7)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.vertFonce, lineWidth: 0.5))
                .shadow(color: Color(red: 192/255, green: 189/255, blue: 191/255),
                        radius: 3, x: 5, y: 5)
                .padding()
        }
        
        
        
    }
}

#Preview {
    SecondButtonHomeView(myText: "Jardin", isBold: true, isTitle: true)
}
