//
//  DataSet.swift
//  Evalios2
//
//  Created by Duc Luu on 08/08/2023.
//

import Foundation
import UIKit

class DataSet {
    
    static var pokemonList = [
        Pokemon(name: "Salameche", imageName: "Salameche", generationNum: 2, pokedexNum: 28, height: 45, type: .fire),
        Pokemon(name: "Reptincel", imageName: "Reptincel", generationNum: 1, pokedexNum: 34, height: 28, type: .fire),
        Pokemon(name: "Dracaufeu", imageName: "Dracaufeu", generationNum: 2, pokedexNum: 17, height: 41, type: .fire),
        Pokemon(name: "Carapuce", imageName: "Carapuce", generationNum: 3, pokedexNum: 29, height: 45, type: .water),
        Pokemon(name: "Bulbizarre", imageName: "Bulbizarre", generationNum: 1, pokedexNum: 48, height: 52, type: .grass),
        Pokemon(name: "Herbizarre", imageName: "Herbizarre", generationNum: 4, pokedexNum: 75, height: 38, type: .grass),
        Pokemon(name: "Florizarre", imageName: "Florizarre", generationNum: 2, pokedexNum: 53, height: 32, type: .grass)
    ]
    
    static var color = [Colors(colorName: "White", color: .white),
                        Colors(colorName: "Red", color: .red),
                        Colors(colorName: "Blue", color: .blue),
                        Colors(colorName: "Green", color: .green),
                        Colors(colorName: "Yellow", color: .yellow)]
    struct Colors {
        var colorName: String
        var color: UIColor
    }
    
    enum PokemonType {
        case fire
        case water
        case grass
        case flying
        case dragon
        case poison
    }
    
    struct Pokemon {
        var name:String
        var imageName: String
        var generationNum: Int
        var pokedexNum: Int
        var height: Int
        var type: PokemonType
    }
}
