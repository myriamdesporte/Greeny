//
//  UnlockedSpeciesView.swift
//  Greeny
//
//  Created by Quentin Jonathan Asmaa Myriam on 17/09/2024.
//

import SwiftUI

struct UnlockedSpeciesView: View {
    
    @Binding var unlockedPlants: [LockedPlant]
    
    var body: some View {
        
        ForEach(unlockedPlants){ unlockedPlant in
            Image(unlockedPlant.plantImage)
        }
    }
}

#Preview {
    UnlockedSpeciesView(unlockedPlants: .constant([]))
}
