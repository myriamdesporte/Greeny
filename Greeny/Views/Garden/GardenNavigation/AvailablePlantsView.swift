//
//  AvailablePlantsView.swift
//  Greeny
//
//  Created by Apprenant 107 on 24/09/2024.
//

import SwiftUI

struct AvailablePlantsView: View {
    
    @Environment(\.dismiss) var dissmiss
    @Binding var availablePlants: [LockedPlant]
    
    var body: some View {
        ZStack {
            BackgroundGardenView()
                .blur(radius: 2)
        ScrollView {
            VStack {
                ForEach(availablePlants){ newPlant in
                    ZStack {
                        
                    
                    Circle()
                        .frame(width: 200)
                        .foregroundColor(.white.opacity(0.8))
                        .padding()
                   
                        Image(newPlant.plantImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                
                        
                    
                }
            
            }.padding(.top, 100)
                
    }

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dissmiss()
                        
                    }) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(.clear)//marron
                                .frame(width: 54, height: 40)
                            
                            Image(systemName: "arrowshape.turn.up.backward")
                                .font(.system(size: 20))
                                .padding()
                                .foregroundColor(.marron)//jaune
                        }
                    }
                    .navigationBarBackButtonHidden()
                }
         
            }
            
        }
        
    }
}

#Preview {
    NavigationView{ AvailablePlantsView(availablePlants: .constant([]))
    }}
