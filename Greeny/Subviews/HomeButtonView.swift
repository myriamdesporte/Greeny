//
//  DesignButtonHomeView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//
// Cette vue correspond au label du bouton jaune. *label = zone cliquable du bouton.


import SwiftUI

struct HomeButtonView: View {
    var myText: String
    var isBold: Bool
    var isTitle: Bool
    
    
    var body: some View {
        
        
        ZStack {
            HStack {
                
                Text(myText)
                    .font(.system((isTitle ? .title : .title2), design: .rounded))
                    .fontWeight(isBold ? .black : nil)
                Image(systemName: "gamecontroller.fill")
                
            }
            
            .foregroundColor(.vertFonce)
            .padding(.horizontal, 100)
            .padding(.vertical, 15)
            .background(.jaune)
            .cornerRadius(7)
            .overlay(RoundedRectangle(cornerRadius: 7)
                .stroke(Color.yellow, lineWidth: 1.2))
            .shadow(color: Color(red: 192/255, green: 189/255, blue: 191/255),
                    radius: 3, x: 5, y: 5)
            
            
        }.padding()
        }
        
    }


#Preview {
    HomeButtonView(myText: "Valider", isBold: true, isTitle: true)
}
