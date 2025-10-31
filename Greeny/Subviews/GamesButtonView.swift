//
//  ButtonGamesPadding.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct GamesButtonView: View {
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
                .foregroundColor(.vertFonce)
                .font(.system((isTitle ? .title : .title2), design: .rounded))
                .fontWeight(isBold ? .black : nil)
                .background(.jaune)
                .cornerRadius(7)
                .overlay(RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.yellow, lineWidth: 2))
            }.padding()
        
            
        
            
               
            
               
            
        }
    }


#Preview {
    GamesButtonView(myText: "Menu principal", isBold: true, isTitle: true)
}
