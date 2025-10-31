//
//  DataPlant.swift
//  GreenyAppLouGabian
//
//  Created by Jonathan Gusse on 19/09/2024.
//

import Foundation
import SwiftUI



//MARK: Model Data
struct Espece: Identifiable, Equatable {
    let id = UUID()
    let nom: String
    let description: String
    let habitat: String
    let cycleDeVie: String
    let utilisation: String
    let faitsAmusants: String
    let image: String
    let sketch: String
    //      var isSelected: Bool = true // Au cas où on souhaiterait faire aussi débloquer ce catalogue
    
    
    //Pour rendre Espece Equatable ce qui permet de l'utiliser dans .animation sur le carrousel
    static func == (lhs: Espece, rhs: Espece) -> Bool {
        return lhs.id == rhs.id
    }
}


//MARK: Données par catégorie

//MARK: Données Arbustes
let arbustes: [Espece] = [
    
    Espece(nom: "Houx", description: "Arbuste à feuilles vertes piquantes...", habitat: "Forêts, haies et parcs ombragés.", cycleDeVie: "Fleurit au printemps, baies en hiver.", utilisation: "Décoration pour Noël.", faitsAmusants: "Baies toxiques pour les humains, mais pas pour les oiseaux.", image: "HouxImg", sketch: "IlexSketch"),
    
    
    Espece(nom: "Noisetier", description: "Arbuste avec des feuilles rondes...", habitat: "Bois clairs et haies.", cycleDeVie: "Fleurit au début du printemps, noisettes en automne.", utilisation: "Noisettes comestibles.", faitsAmusants: "Les Celtes pensaient qu’il avait des pouvoirs magiques.", image: "NoisetierImg", sketch: "CorylusSketch"),
    
//    Espece(nom: "Troène",description: "Arbuste dense avec de petites fleurs blanches, souvent utilisé pour les haies.",habitat: "Jardins, haies et zones boisées.",cycleDeVie: "Vivace, persistant ou semi-persistant selon le climat.",utilisation: "Utilisé principalement comme haie.",faitsAmusants: "Il est souvent taillé en formes géométriques dans les jardins.",image: "TroeneImg",sketch: "TroeneSketch"),
    
    Espece(nom: "Aubépine", description: "Arbuste épineux à petites fleurs blanches et fruits rouges appelès cenelles", habitat: "Haies, bords des routes et prairies", cycleDeVie: "Fleurit au printemps et produit des cenelles à l'automne", utilisation: "Parfois utilisé pour faire des infusions", faitsAmusants: "L'aubèpine est souvent associèe aux contes et légendes pour protéger contre les mauvais esprits.", image: "AubepineImg", sketch: "AubepineSketch"),
    
    Espece(nom: "Sureau noir", description: "Arbuste avec des fleurs blanches en ombelles et des baies noires en grappes.", habitat: "Haies, forêts, et bords de rivières", cycleDeVie: "Fleurit au printemps et les baies murrissent en automne.", utilisation: "Les fleurs sont utilisées pour faire des sirops et les baies pour des confitures.", faitsAmusants: "Les baies du sureau doivent être cuites avant d’être consommées, car elles sont toxiques crues !", image: "SureauImg", sketch: "SambucusSketch")
    
]


//MARK: Données Arbres
let arbres: [Espece] = [
    Espece(nom: "Chêne", description: "Grand arbre robuste...", habitat: "Forêts et parcs.", cycleDeVie: "Peut vivre plus de 300 ans.", utilisation: "Bois pour meubles.", faitsAmusants: "Les chênes sont souvent les plus anciens arbres des forêts !", image: "CheneImg", sketch: "cheneSketch"),
    Espece(nom: "Érable", description: "Arbre à belles feuilles...", habitat: "Forêts tempérées.", cycleDeVie: "Produit des hélicoptères.", utilisation: "Sirop d’érable.", faitsAmusants: "Le Canada a un érable sur son drapeau !", image: "ErableImg", sketch: "AcerSketch"),
    
    Espece(nom: "Saule pleureur", description: "Arbre avec des branches longues qui tombent vers le sol.", habitat: "Près des rivières et des étangs.", cycleDeVie: "Fleurit au printemps, perd ses feuilles en automne.", utilisation: "Souvent planté comme ornement dans les parcs.", faitsAmusants: "Les branches de saule étaient autrefois utilisées pour fabriquer des paniers.", image: "SauleImg", sketch: "SaulePleureurSketch"),
    
    Espece(nom: "Bouleau", description: "Arbre avec une écorce blanche et des feuilles légères.", habitat: "Forêts claires et bords de routes.", cycleDeVie: "Perd ses feuilles en automne et fleurit au printemps.", utilisation: "Bois léger pour des meubles et des objets décoratifs.", faitsAmusants: "L’écorce blanche du bouleau le protège contre les insectes et la chaleur !", image: "BouleauImg", sketch: "BouleauSketch"),
    
    Espece(nom: "Platane", description: "Grand arbre avec une écorce qui pèle.", habitat: "Villes, parcs, et bords de route.", cycleDeVie: "Perd ses feuilles en automne ; vit souvent plus de 100 ans.", utilisation: "Souvent planté pour fournir de l’ombre en ville.", faitsAmusants: "Les platanes peuvent atteindre plus de 30 mètres de hauteur !", image: "PlataneImg", sketch: "plataneSketch")
    
]


//MARK: Données Fleures
let fleurs: [Espece] = [
    Espece(nom: "Coquelicot", description: "Fleur rouge vif...", habitat: "Champs et prairies.", cycleDeVie: "Fleurit au printemps.", utilisation: "Symbole du souvenir.", faitsAmusants: "Le coquelicot pousse après des batailles !", image: "CoquelicotImg", sketch: "CoquelicotSketch"),
    
    Espece(nom: "Marguerite", description: "Fleur blanche avec un centre jaune...", habitat: "Prairies et bords de route.", cycleDeVie: "Fleurit du printemps à l'automne.", utilisation: "Ornementale.", faitsAmusants: "Les enfants jouent à 'je t’aime, un peu, beaucoup'.", image: "margueriteImg", sketch: "Marguerites"),
    
    Espece(nom: "Pâquerette", description: "Petite fleur blanche avec un cœur jaune.", habitat: "Pelouses et prairies humides.", cycleDeVie: "Fleurit presque toute l’année, même en hiver.", utilisation: "Parfois utilisée dans des salades ou comme décoration.", faitsAmusants: "Les pâquerettes se ferment la nuit et s’ouvrent le matin avec le soleil.", image: "paquerettesImg", sketch: "PaqueretteSketch"),
    
    Espece(nom: "Bleuet", description: "Fleur bleue en forme de pompon.", habitat: "Champs de céréales et prairies.", cycleDeVie: "Fleurit en été.", utilisation: "Utilisé en ornement dans les bouquets.", faitsAmusants: "Le bleuet est l’emblème national de la France pour commémorer les soldats.", image: "BleuetImg", sketch: "BleuetSketch"),
    
    Espece(nom: "Primevère", description: "Fleur jaune vif au printemps.", habitat: "Prairies humides, forêts et jardins.", cycleDeVie: "Fleurit dès la fin de l’hiver.", utilisation: "Très populaire dans les jardins pour ses couleurs vives.", faitsAmusants: "Le nom “primevère” vient du mot latin signifiant “première”.", image: "PrimevertImg", sketch: "Primevertsketch")
]


//MARK: Données Champignons
let champignons: [Espece] = [
    Espece(nom: "Champignon de Paris", description: "Petit champignon blanc...", habitat: "Pousse dans les prairies.", cycleDeVie: "Croissance rapide.", utilisation: "Très utilisé en cuisine.", faitsAmusants: "Aussi appelé 'champignon de couche'.", image: "ChampignonDeParisImg", sketch: "ChampignonDeParisSketch"),
    
    Espece(nom: "Cèpe", description: "Gros champignon brun...", habitat: "Forêts de feuillus.", cycleDeVie: "Pousse en automne.", utilisation: "Très recherché en cuisine.", faitsAmusants: "Très prisé des gourmets.", image: "CèpeImg", sketch: "CèpeSketch"),
    
    Espece(nom: "Girolle", description: "Champignon jaune à la forme en entonnoir.", habitat: "Forêts de feuillus et de conifères.", cycleDeVie: "Pousse en été et en automne.", utilisation: "Délicieux en cuisine, souvent utilisé dans les plats raffinés.", faitsAmusants: "La girolle est l’un des champignons les plus appréciés des chefs cuisiniers.", image: "GirolleImg", sketch: "GirolleSketch2"),
    
    Espece(nom: "Amanite tue-mouches", description: "Champignon rouge vif avec des taches blanches.", habitat: "Forêts de conifères et mixtes.", cycleDeVie: "Pousse à la fin de l’été et en automne.", utilisation: "Très toxique, souvent représenté dans les contes et légendes.", faitsAmusants: "Bien que toxique, ce champignon est l’un des plus reconnaissables et est souvent utilisé dans les illustrations.", image: "AmaniteImg", sketch: "AmaniteSketch"),
    
    Espece(nom: "Morille", description: "Champignon de forme allongée avec une tête alvéolée.", habitat: "Forêts et bois clairs.", cycleDeVie: "Pousse au printemps.", utilisation: "Très apprécié en cuisine, notamment dans les plats raffinés.", faitsAmusants: "Les morilles sont difficiles à cultiver, ce qui en fait des champignons très prisés et coûteux.", image: "MorilleImg", sketch: "MorilleSketch")
    
]
