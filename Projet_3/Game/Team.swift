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

    
    func createCharacter() {
        
        for i in 1...3 {
            
            var name = ""
            
            var characterChoice = 0
            
            
            print("Select the class of your character \(i) :")
            print("1. Fighter")
            print("2. Magus")
            print("3. Colossus")
            print("4. Dwarf")

            
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
    
    
}
