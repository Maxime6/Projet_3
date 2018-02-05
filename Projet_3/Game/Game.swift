//
//  Game.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

class Game {
    
    var character = [Character]()
    
    func createCharacter() {
        print("Select a Character :")
        print("1. Fighter")
        print("2. Magus")
        print("3. Colossus")
        print("4. Dwarf")
        
        if let choice = readLine() {
            switch choice {
            case "1": // Create a Fighter
            case "2": // Create a Magus
            case "3": // Create a Colossus
            case "4": // Create a Dwarf
            default: 
            }
        }
    }
    
}
