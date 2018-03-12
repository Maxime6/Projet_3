//
//  Team.swift
//  Projet_3
//
//  Created by Maxime Tanter on 09/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Team {
    
    var characters = [Character]()
    
    var teamVitality = 0
    
    func createCharacter() {
        
        for i in 1...3 {
            
            var name = ""
            
            var characterChoice = 0
            
            print("Select the class of your character \(i) :")
            print("1. Fighter / Feature : pdv = 100, weapon = Sword, damage = 15 ")
            print("2. Magus / Feature : pdv = 70, weapon = Wand, care = 20 ")
            print("3. Colossus / Feature : pdv = 130, weapon = Shield, damage = 8 ")
            print("4. Dwarf / Feature : pdv = 60, weapon = Axe, damage = 20 ")
        
            repeat {
                characterChoice = Input.inputInt()
            } while characterChoice != 1 && characterChoice != 2 && characterChoice != 3 && characterChoice != 4
            
            print("Enter the name of your character \(i) :")
            
            repeat {
                name = Input.inputString()
            } while name == ""
            
            switch characterChoice {
            case 1: // Create a Fighter
                characters.append(Fighter(name: name))
            case 2: // Create a Magus
                characters.append(Magus(name: name))
            case 3: // Create a Colossus
                characters.append(Colossus(name: name))
            case 4: // Create a Dwarf
                characters.append(Dwarf(name: name))
            default: break
            }

        }

    }
    
    func teamDescription() {
        for i in 0..<characters.count {
            let character = characters[i]
            character.description(index: i+1)
        }
    }
    
    func teamIsDead() -> Bool {
        var teamIsDead = false
        for character in characters {
            if character.vitalityPoints == 0 {
                teamIsDead = true
            } else {
                return false
            }
        }
        return teamIsDead
    }
    
}
