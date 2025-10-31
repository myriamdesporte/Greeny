//
//  Question.swift
//  Greeny
//
//  Created by Apprenant 107 on 17/09/2024.
//

import Foundation
import SwiftUI

struct Question: Identifiable {
    
    let id = UUID()
    let questionTitle: String
    let questionImage : String
    let answers: [String]
    let correctAnswer: String
    let additionnalInfo: String
    
    
}

let questions: [Question] = [
    
    // Aubépine
    Question(questionTitle: "L\'aubépine favorise la pollinisation des abeilles.\nOn dit que c\'est une plante:",
             questionImage: "Aubepine",
             answers: ["Méllifère", "Mielleuse", "Miellée"].shuffled(),
                 correctAnswer: "Méllifère",
                 additionnalInfo: "L\'aubépine est une plante méllifère qui est d\'un grand intérêt pour les apiculteurs. Ses fleurs produisent une grande quantité de pollen et de nectar."),
    
    // Ail des ours
    Question(questionTitle: "Que peut-on faire avec de l'ail des ours?",
             questionImage: "Ail des ours",
             answers: ["En faire du pesto.",
                       "Le planter pour faire pousser des arbres.",
                       "L'utiliser pour peindre."].shuffled(),
             correctAnswer: "En faire du pesto.",
             additionnalInfo: "L'ail des ours a une saveur proche de l'ail classique et est souvent utilisé en cuisine, notamment pour faire du pesto."),

    // Arnica
    Question(questionTitle: "Que fait l'arnica lorsqu'on l'applique sur la peau?",
             questionImage: "Arnica",
             answers: ["Elle aide à soigner les bleus et bosses.",
                       "Elle change la couleur de la peau en bleu.",
                       "Elle fait repousser les cheveux."].shuffled(),
             correctAnswer: "Elle aide à soigner les bleus et bosses.",
             additionnalInfo: "L'arnica est utilisée depuis longtemps pour soulager les bleus et les contusions. Elle a des propriétés anti-inflammatoires."),

    // Belladone
    Question(questionTitle: "Pourquoi la belladone est-elle dangereuse?",
             questionImage: "Belladone",
             answers: ["Elle est toxique si on la mange.",
                       "Elle explose si on la touche.",
                       "Elle attire les ours."].shuffled(),
             correctAnswer: "Elle est toxique si on la mange.",
             additionnalInfo: "La belladone est une plante très toxique, utilisée dans le passé en médecine mais dangereuse à consommer sans précaution."),

    // Chardon-Marie
    Question(questionTitle: "Quel est l'avantage du chardon-Marie pour la santé?",
             questionImage: "Chardon Marie",
             answers: ["Il aide à protéger le foie.",
                       "Il fait pousser plus vite les cheveux.",
                       "Il donne plus d'énergie."].shuffled(),
             correctAnswer: "Il aide à protéger le foie.",
             additionnalInfo: "Le chardon-Marie est souvent utilisé en phytothérapie pour ses propriétés bénéfiques sur le foie."),

    // Digitaline
    Question(questionTitle: "La digitaline est une plante utilisée pour:",
             questionImage: "Digitaline",
             answers: ["Soigner le cœur.",
                       "Rendre les cheveux plus brillants.",
                       "Changer la couleur des yeux."].shuffled(),
             correctAnswer: "Soigner le cœur.",
             additionnalInfo: "La digitaline est utilisée en médecine pour ses effets sur le cœur, mais elle doit être manipulée avec précaution car elle peut être toxique."),

    // Eucalyptus
    Question(questionTitle: "À quoi sert l'eucalyptus?",
             questionImage: "Eucalyptus",
             answers: ["Aider à respirer lorsqu'on est malade.",
                       "Servir de nourriture aux oiseaux.",
                       "Changer la couleur des vêtements."].shuffled(),
             correctAnswer: "Aider à respirer lorsqu'on est malade.",
             additionnalInfo: "L'eucalyptus est souvent utilisé en inhalation ou dans les sirops pour soulager les problèmes respiratoires."),

    // Houx
    Question(questionTitle: "Le houx est souvent utilisé pour:",
             questionImage: "Houx",
             answers: ["Décorer les maisons à Noël.",
                       "Faire des bonbons.",
                       "Changer la couleur des murs."].shuffled(),
             correctAnswer: "Décorer les maisons à Noël.",
             additionnalInfo: "Le houx, avec ses feuilles piquantes et ses baies rouges, est une décoration populaire pendant les fêtes de Noël."),

    // Jasmin
    Question(questionTitle: "Que fait-on souvent avec le jasmin?",
             questionImage: "Jasmin",
             answers: ["On l'utilise dans des parfums.",
                       "On le mange dans des salades.",
                       "On le met sur les voitures."].shuffled(),
             correctAnswer: "On l'utilise dans des parfums.",
             additionnalInfo: "Le jasmin est apprécié pour son parfum doux et envoûtant, et on l'utilise souvent dans les parfums et les huiles essentielles."),

    // Laurier-tuis
    Question(questionTitle: "Le laurier-tunis est souvent utilisé pour:",
             questionImage: "Laurier tunis",
             answers: ["Assaisonner des plats.",
                       "Peindre des meubles.",
                       "Faire du jus."].shuffled(),
             correctAnswer: "Assaisonner des plats.",
             additionnalInfo: "Le laurier-tunis, tout comme le laurier classique, est une plante aromatique utilisée pour parfumer les plats."),

    // Ortie blanche
    Question(questionTitle: "Quelle est la différence entre l'ortie blanche et l'ortie classique?",
             questionImage: "Ortie blanche",
             answers: ["Elle ne pique pas.",
                       "Elle change de couleur avec la lumière.",
                       "Elle est toxique."].shuffled(),
             correctAnswer: "Elle ne pique pas.",
             additionnalInfo: "Contrairement à l'ortie classique, l'ortie blanche ne pique pas. Elle a même des propriétés bénéfiques pour la santé."),

    // Pissenlit
    Question(questionTitle: "Que peut-on faire avec des pissenlits?",
             questionImage: "Pissenlit",
             answers: ["Faire de la salade.",
                       "Peindre des murs.",
                       "Les utiliser pour faire du feu."].shuffled(),
             correctAnswer: "Faire de la salade.",
             additionnalInfo: "Les feuilles de pissenlit sont comestibles et peuvent être utilisées en salade ou en infusion."),

    // Prêle
    Question(questionTitle: "Pourquoi la prêle est-elle intéressante pour la santé?",
             questionImage: "Prele",
             answers: ["Elle est riche en minéraux.",
                       "Elle fait chanter les oiseaux.",
                       "Elle rend la peau bleue."].shuffled(),
             correctAnswer: "Elle est riche en minéraux.",
             additionnalInfo: "La prêle est une plante riche en minéraux, notamment en silice, et est souvent utilisée pour renforcer les os et les cheveux."),

    // Primevère
    Question(questionTitle: "À quoi sert la primevère?",
             questionImage: "Primevere",
             answers: ["Elle est utilisée en infusion pour calmer.",
                       "Elle est utilisée pour peindre des meubles.",
                       "Elle permet de faire des gâteaux."].shuffled(),
             correctAnswer: "Elle est utilisée en infusion pour calmer.",
             additionnalInfo: "La primevère est une plante utilisée en infusion pour ses propriétés relaxantes et apaisantes."),

    // Camomille
    Question(questionTitle: "Pourquoi utilise-t-on souvent la camomille?",
             questionImage: "Camomille",
             answers: ["Pour faire des infusions relaxantes.",
                       "Pour colorer les cheveux en jaune.",
                       "Pour protéger la peau du soleil."].shuffled(),
             correctAnswer: "Pour faire des infusions relaxantes.",
             additionnalInfo: "La camomille est souvent utilisée en infusion pour ses effets calmants et apaisants."),

    // Lavande
    Question(questionTitle: "La lavande est souvent utilisée pour:",
             questionImage: "Lavande",
                 answers: ["Repousser les insectes.",
                           "Attirer les chats.",
                           "Faire pousser des arbres."].shuffled(),
                 correctAnswer: "Repousser les insectes.",
                 additionnalInfo: "La lavande a une odeur agréable pour les humains, mais elle repousse les insectes comme les moustiques. C'est pour cela qu'on en met souvent dans les armoires."),
    // Menthe
    Question(questionTitle: "Que fait la menthe lorsqu'on en mange?",
             questionImage: "Menthe",
                 answers: ["Elle rend la bouche froide et rafraîchit.",
                           "Elle fait éternuer.",
                           "Elle change la couleur de la langue."].shuffled(),
                 correctAnswer: "Elle rend la bouche froide et rafraîchit.",
                 additionnalInfo: "La menthe est utilisée dans les bonbons ou les chewing-gums pour donner une sensation de fraîcheur dans la bouche. Elle peut aussi aider à la digestion."),
    // Sauge
    Question(questionTitle: "Que fait la sauge dans la cuisine?",
             questionImage: "Sauge",
                 answers: ["Elle aide à parfumer les plats.",
                           "Elle rend les plats plus sucrés.",
                           "Elle change la couleur des aliments."].shuffled(),
                 correctAnswer: "Elle aide à parfumer les plats.",
                 additionnalInfo: "La sauge est souvent utilisée pour aromatiser les plats, surtout dans les recettes méditerranéennes. Elle a un parfum fort et savoureux."),
    
    // Rose
    Question(questionTitle: "Pourquoi les gens aiment-ils la rose?",
             questionImage: "Rose",
                answers: ["Parce qu'elle sent bon.",
                          "Parce qu'elle fait fuir les oiseaux.",
                          "Parce qu'elle pousse très vite."].shuffled(),
                correctAnswer: "Parce qu'elle sent bon.",
                additionnalInfo: "Les roses sont célèbres pour leur belle apparence et leur parfum agréable. Elles sont souvent offertes en bouquet pour montrer l'affection."),
    
    //  Sureau
    Question(questionTitle: "Qu'est-ce qu'on peut faire avec des baies de sureau?",
             questionImage: "Sureau",
                answers: ["Faire du sirop ou de la confiture.",
                          "Les manger crues directement.",
                          "En faire des bonbons qui brillent dans le noir."].shuffled(),
                correctAnswer: "Faire du sirop ou de la confiture.",
                additionnalInfo: "Les baies de sureau sont utilisées pour faire des sirops et des confitures. Elles ne doivent pas être mangées crues car elles peuvent être toxiques."),
    
    // Verveine
    Question(questionTitle: "La verveine est souvent utilisée pour:",
             questionImage: "Verveine",
                answers: ["Faire des tisanes relaxantes.",
                          "Colorer les vêtements en bleu.",
                          "Peindre des murs."].shuffled(),
                correctAnswer: "Faire des tisanes relaxantes.",
                additionnalInfo: "La verveine est connue pour ses propriétés apaisantes et digestives. On la retrouve souvent dans les infusions pour se détendre avant de dormir."),
    
    // Rhubarbe
    Question(questionTitle: "Avec la rhubarbe, on peut:",
             questionImage: "Rhubarbe",
                answers: ["Faire des tartes.",
                          "Peindre les murs.",
                          "Attraper des papillons."].shuffled(),
                correctAnswer: "Faire des tartes.",
                additionnalInfo: "La rhubarbe est souvent utilisée en cuisine pour faire des tartes ou des compotes grâce à son goût acidulé."),
    
    // Romarin
    Question(questionTitle: "Le romarin est utilisé pour:",
             questionImage: "Romarin",
               answers: ["Aromatiser des plats.",
                         "Changer la couleur des vêtements.",
                         "Peindre des meubles."].shuffled(),
               correctAnswer: "Aromatiser des plats.",
               additionnalInfo: "Le romarin est une herbe aromatique très utilisée en cuisine pour parfumer les plats, notamment dans la cuisine méditerranéenne."),
    
    // Ronce
    Question(questionTitle: "Les ronces produisent souvent des fruits appelés:",
             questionImage: "Ronce",
                 answers: ["Mûres.",
                           "Poires.",
                           "Pêches."].shuffled(),
                 correctAnswer: "Mûres.",
                 additionnalInfo: "Les ronces produisent des mûres, qui sont des fruits noirs comestibles souvent utilisés en confiture ou dans les desserts.")

]

let numberOfQuestionsInQuiz: Int = 5
