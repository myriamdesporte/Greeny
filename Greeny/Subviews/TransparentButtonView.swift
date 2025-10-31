//
//  TransparentButton.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct TransparentButtonView: View {
    var myText: String
    var isBold: Bool
    var isTitle: Bool
    
    var body: some View {
        
        
        VStack {
            HStack {
                Spacer()
                Text(myText)
                    .underline()
                Spacer()
            }
            
            .padding()
            .foregroundColor(.vertFonce)
            .font(.system((isTitle ? .title : .title2), design: .rounded))
            .fontWeight(isBold ? .black : nil)
            .cornerRadius(7)
            
        }.padding()
        
        
        
        
        
        
        
    }
}


#Preview {
    TransparentButtonView(myText: "Menu principal", isBold: true, isTitle: true)
}
