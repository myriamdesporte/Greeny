//
//  GamesButtonGreen.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct GamesButtonGreenView: View {
    var myText: String
    var isBold: Bool
    var isTitle: Bool
    
    var body: some View {

            
            VStack {
                HStack {
                    Spacer()
                    Text(myText)
                    Spacer()
                }
                
                .padding()
                .foregroundColor(.jaune)
                .font(.system((isTitle ? .title : .title2), design: .rounded))
                .fontWeight(isBold ? .black : nil)
                .background(.vertFonce.opacity(1))
                .cornerRadius(7)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.vertFonce, lineWidth: 2))
            }.padding()
            
        
            
               
            
               
            
        }
    }


#Preview {
    GamesButtonGreenView(myText: "Menu principal", isBold: true, isTitle: true)
}
