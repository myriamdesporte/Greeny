//
//  EspeceDetailsView.swift
//  Greeny
//
//  Created by Jonathan Gusse on 24/09/2024.
//

import SwiftUI

struct EspeceDetailsView: View {
    let espece: Espece
    
    var body: some View {
        ScrollView {
            // Afficher l'image de l'espèce sélectionnée
            Image(espece.sketch)
                .resizable()
                .aspectRatio(contentMode: .fill) // Remplir le rectangle
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Prendre toute la largeur de l'écran
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Bords ronds pour l'image
                .padding()
            
            // Informations sur l'espèce
            VStack(alignment: .leading, spacing: 10) {
                // Titre de la scrollView
                Text(espece.nom)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("\(Text("Description:").fontWeight(.bold))\n\(espece.description)")
                    Text("\(Text("Habitat:").fontWeight(.bold))\n\(espece.habitat)")
                    Text("\(Text("Cycle de vie:").fontWeight(.bold))\n\(espece.cycleDeVie)")
                    Text("\(Text("Utilisation:").fontWeight(.bold))\n\(espece.utilisation)")
                    Text("\(Text("Faits amusants:").fontWeight(.bold))\n\(espece.faitsAmusants)")
                }
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
                
            }
            .padding()
            .background(Color.beige.opacity(0.9))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    EspeceDetailsView(espece: arbustes[0])
}
