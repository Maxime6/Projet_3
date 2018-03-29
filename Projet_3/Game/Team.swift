//
//  Team.swift
//  Projet_3
//
//  Created by Maxime Tanter on 09/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Team {
    
    // The characters of the teams
    var characters = [Character]()
    
    // Creat a character
    func createCharacter() {
        
        for i in 1...3 {
            
            // Character name
            var name = ""
            
            // User character choice
            var characterChoice = 0
            
            print("")
            print("☞ Select the class of your character \(i) :")
            print("")
            print("1. Fighter / ♥️ = 100, ⚔️ = Sword, 💥 = 15 ")
            print("")
            print("2. Magus / ♥️ = 70, ⚔️ = Wand, 💗 = 20 ")
            print("")
            print("3. Colossus / ♥️ = 130, ⚔️ = Shield, 💥 = 8 ")
            print("")
            print("4. Dwarf / ♥️ = 60, ⚔️ = Axe, 💥 = 20 ")
        
            repeat {
                characterChoice = Input.inputInt()
            } while characterChoice != 1 && characterChoice != 2 && characterChoice != 3 && characterChoice != 4
            
            print("Choose his name :")
            
            name = NameManager.shared.uniqueCharacterName()
            
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
    
    // Team Description
    func teamDescription() {
        for i in 0..<characters.count {
            let character = characters[i]
            character.description(index: i+1)
        }
    }
    
    // Check if a team loses
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
