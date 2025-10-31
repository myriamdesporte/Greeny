//
//  Plant.swift
//  Greeny
//
//  Created by Apprenant 107 on 18/09/2024.
//

import Foundation
import SwiftUI

struct LockedPlant: Identifiable {
    let id = UUID()
    let plantImage: String
    let plantName: String
    let plantDescription: String
    let plantLocation: String
    let plantUse: String
    let plantToxicity: String
    var isLocked: Bool = true// Variable pour le systéme de déblocage de plantes
    
    // A adapter aux besoins réels du jeu des paires et du jardin.
    
}


let plants: [LockedPlant] = [
    LockedPlant(plantImage: "Aubepine", plantName: "Aubépine", plantDescription: "Description Aubépine", plantLocation: "Localisation Aubépine", plantUse: "Utilisation de l\'aubépine", plantToxicity: "Toxicité de l\'aubépine"),
    
    LockedPlant(plantImage: "Camomille", plantName: "Camomille", plantDescription: "Description Camomille", plantLocation: "Localisation Camomille", plantUse: "Utilisation de la Camomille", plantToxicity: "Toxicité de la Camomille"),
    
    
    LockedPlant(plantImage: "Belladone", plantName: "Belladone", plantDescription: "Plante toxique avec des baies noires et des feuilles brillantes.", plantLocation: "Zones ombragées, sous-bois.", plantUse: "Historiquement utilisée en médecine mais très toxique, ne doit pas être consommée.", plantToxicity: "Très toxique, peut provoquer des hallucinations et des convulsions."),
    
    
    
    LockedPlant(plantImage: "Ortie", plantName: "Ortie", plantDescription: "Plante connue pour ses feuilles urticantes, souvent utilisée en cuisine et en médecine.", plantLocation: "Jardins, terrains en friche, et bords des chemins.", plantUse: "Utilisée en soupe, en infusion, et pour ses propriétés diurétiques et anti-inflammatoires.", plantToxicity: "Non toxique après cuisson ou séchage."),
    
    LockedPlant(plantImage: "Ronce", plantName: "Ronce", plantDescription: "Plante épineuse avec des baies comestibles, souvent utilisée pour faire des confitures.", plantLocation: "Champs, haies, et jardins.", plantUse: "Utilisée pour ses baies comestibles en confitures, et ses propriétés astringentes en médecine.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Arnica", plantName: "Arnica", plantDescription: "Plante vivace avec des fleurs jaunes, utilisée en usage externe pour les contusions.", plantLocation: "Près des chemins de montagne et dans les jardins.", plantUse: "Utilisée en application locale pour soulager les douleurs musculaires et les contusions.", plantToxicity: "Peut être toxique si ingérée en grande quantité."),
    
    
    
    
    LockedPlant(plantImage: "Pissenlit", plantName: "Pissenlit", plantDescription: "Plante herbacée avec des fleurs jaunes et des feuilles dentelées, souvent considérée comme une mauvaise herbe.", plantLocation: "Jardins, pelouses, et terrains en friche.", plantUse: "Utilisé en salade, en infusion, et pour ses propriétés diurétiques et détoxifiantes.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Digitaline", plantName: "Digitaline", plantDescription: "Plante toxique avec des fleurs en forme de cloche, utilisée pour traiter les maladies cardiaques.", plantLocation: "Forêts, jardins ombragés.", plantUse: "Utilisée en médecine pour traiter les troubles cardiaques, mais doit être manipulée avec soin.", plantToxicity: "Très toxique, peut provoquer des troubles cardiaques graves."),
    
    LockedPlant(plantImage: "Primevere", plantName: "Primevère", plantDescription: "Plante à fleurs souvent utilisée pour ses propriétés médicinales.", plantLocation: "Jardins et sous-bois.", plantUse: "Utilisée en infusion pour ses propriétés apaisantes et expectorantes.", plantToxicity: "Non toxique."),
    
   
    
    LockedPlant(plantImage: "Ail des ours", plantName: "Ail des ours", plantDescription: "Plante herbacée avec des feuilles ressemblant à celles de l'ail, utilisée en cuisine.", plantLocation: "Forêts humides, sous-bois.", plantUse: "Utilisé en cuisine pour ses propriétés aromatiques et comme stimulant de l'immunité.", plantToxicity: "Non toxique."),
    
    
    
    LockedPlant(plantImage: "Laurier tuis", plantName: "Laurier tuis", plantDescription: "Arbuste avec des feuilles persistantes et des baies toxiques.", plantLocation: "Jardins, haies.", plantUse: "Utilisé comme plante ornementale, mais les baies sont toxiques.", plantToxicity: "Toxicité élevée, les baies peuvent provoquer des vomissements et des diarrhées."),
    
    
    
    LockedPlant(plantImage: "Ortie blanche", plantName: "Ortie blanche", plantDescription: "Plante herbacée avec des feuilles blanches et des fleurs ressemblant à l'ortie commune.", plantLocation: "Jardins et champs.", plantUse: "Utilisée pour ses propriétés anti-inflammatoires et comme remède contre les allergies.", plantToxicity: "Non toxique."),
    
    
    
    
    LockedPlant(plantImage: "Lavande", plantName: "Lavande", plantDescription: "Plante aromatique avec des fleurs violettes, utilisée pour son parfum et ses propriétés relaxantes.", plantLocation: "Jardins ensoleillés et potagers.", plantUse: "Utilisée en aromathérapie, en cuisine, et en cosmétique.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Rhubarbe", plantName: "Rhubarbe", plantDescription: "Plante vivace avec des tiges comestibles et acides, souvent utilisée en pâtisserie.", plantLocation: "Jardins potagers, surtout dans les climats tempérés.", plantUse: "Utilisée en pâtisserie pour ses tiges acides, également en médecine traditionnelle.", plantToxicity: "Les feuilles sont toxiques mais les tiges sont comestibles."),

    
    LockedPlant(plantImage: "Verveine", plantName: "Verveine", plantDescription: "Plante à feuilles vertes et fleurs petites, utilisée en infusion.", plantLocation: "Jardins, souvent cultivée en pots.", plantUse: "Utilisée pour ses propriétés relaxantes et digestives en infusion.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Menthe", plantName: "Menthe", plantDescription: "Plante herbacée avec des feuilles aromatiques, souvent utilisée en cuisine.", plantLocation: "Jardins, pots et terrains humides.", plantUse: "Utilisée pour ses propriétés digestives et aromatiques en cuisine.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Prele", plantName: "Prêle", plantDescription: "Plante vivace avec des tiges jointives, utilisée pour ses propriétés diurétiques.", plantLocation: "Bords des rivières, terrains humides.", plantUse: "Utilisée en infusion pour ses propriétés diurétiques et reminéralisantes.", plantToxicity: "Non toxique."),
    
    
    LockedPlant(plantImage: "Sauge", plantName: "Sauge", plantDescription: "Plante aromatique avec des feuilles vertes et velues, utilisée en cuisine et en médecine.", plantLocation: "Jardins ensoleillés, souvent en pots.", plantUse: "Utilisée pour ses propriétés antiseptiques et en cuisine comme assaisonnement.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Jasmin", plantName: "Jasmin", plantDescription: "Plante grimpante avec des fleurs parfumées, souvent utilisée en parfumerie.", plantLocation: "Jardins, souvent en treillage ou en pots.", plantUse: "Utilisée en parfumerie et en aromathérapie pour son parfum.", plantToxicity: "Non toxique."),
    
    LockedPlant(plantImage: "Sureau", plantName: "Sureau", plantDescription: "Arbuste avec des baies noires et des fleurs blanches, utilisé en cuisine et en médecine.", plantLocation: "Jardins, haies, et bordures de champs.", plantUse: "Utilisé pour faire des sirops, des confitures et en médecine traditionnelle.", plantToxicity: "Les baies crues peuvent être légèrement toxiques, mais cuites, elles sont sûres."),
    
    LockedPlant(plantImage: "Romarin", plantName: "Romarin", plantDescription: "Plante aromatique avec des feuilles en forme d'aiguilles, souvent utilisée en cuisine.", plantLocation: "Jardins ensoleillés, souvent en pots.", plantUse: "Utilisée comme assaisonnement et pour ses propriétés médicinales en infusion.", plantToxicity: "Non toxique."),
    
      
    LockedPlant(plantImage: "Thym", plantName: "Thym", plantDescription: "Plante aromatique avec des petites feuilles vertes, utilisée en cuisine et en infusion.", plantLocation: "Jardins secs et ensoleillés, souvent cultivé en pots.", plantUse: "Utilisé pour ses propriétés antiseptiques et en cuisine pour parfumer les plats.", plantToxicity: "Non toxique."),
        
       
    LockedPlant(plantImage: "Houx", plantName: "Houx", plantDescription: "Arbuste à feuilles persistantes et baies rouges, souvent utilisé comme décoration de Noël.", plantLocation: "Jardins, haies, et forêts.", plantUse: "Utilisé en décoration, mais les baies sont toxiques si ingérées.", plantToxicity: "Toxique, peut provoquer des vomissements et des douleurs abdominales."),

    LockedPlant(plantImage: "Buis", plantName: "Buis", plantDescription: "Arbuste à feuillage persistant, souvent utilisé pour les haies et les topiaires.", plantLocation: "Jardins, parcs et forêts.", plantUse: "Utilisé pour l'ornementation, notamment dans les haies et les jardins à la française.", plantToxicity: "Légèrement toxique, ingestion peut provoquer des troubles digestifs."),
    
    LockedPlant(plantImage: "Eucalyptus", plantName: "Eucalyptus", plantDescription: "Arbre avec des feuilles aromatiques, utilisé pour ses propriétés antiseptiques.", plantLocation: "Forêts tropicales et subtropicales, souvent cultivé en jardin.", plantUse: "Utilisé pour traiter les infections respiratoires et comme huile essentielle.", plantToxicity: "Non toxique, mais peut être irritant pour la peau."),
        
        
        LockedPlant(plantImage: "Genévrier",  plantName: "Genévrier", plantDescription: "Arbuste à baies bleues, souvent utilisé en cuisine et en médecine traditionnelle.", plantLocation: "Régions montagneuses, forêts et jardins.", plantUse: "Baies utilisées comme épices, et pour leurs propriétés digestives.", plantToxicity: "Les baies peuvent être toxiques si consommées en grande quantité."),
    
    LockedPlant(plantImage: "Violette", plantName: "Violette", plantDescription: "Petite plante à fleurs violettes, connue pour son parfum doux et ses propriétés médicinales.", plantLocation: "Sous-bois, prairies et jardins.", plantUse: "Utilisée en confiserie, en cosmétique, et pour ses propriétés apaisantes en infusion.", plantToxicity: "Non toxique.")
]


