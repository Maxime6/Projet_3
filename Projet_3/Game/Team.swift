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
    
    var names = [String]()
    
    func createCharacter() {
        
        for i in 1...3 {
            
            print("Choose the name of your character \(i) :")
            if let name = readLine() {
                names.append(name)
            }
            
            print("Select the class of your character \(i)")
            print("1. Fighter")
            print("2. Magus")
            print("3. Colossus")
            print("4. Dwarf")
            if let choice = readLine() {
                switch choice {
                case "1": // Create a Fighter
                    characters.append(Fighter(name: names[i]))
                case "2": // Create a Magus
                    characters.append(Magus(name: names[i]))
                case "3": // Create a Colossus
                    characters.append(Colossus(name: names[i]))
                case "4": // Create a Dwarf
                    characters.append(Dwarf(name: names[i]))
                default: break
                }
            }
        }
        
//        for i in 1..<4 {
//            print("Choose the name of your character \(i) :")
//
//            if let name = readLine() {
//                names.append(name)
//            }
//
//
//        }
//
//        for _ in 1..<4 {
//            print("Select the class of your character :")
//            print("1. Fighter")
//            print("2. Magus")
//            print("3. Colossus")
//            print("4. Dwarf")
//            // Choisir un numéro entre 1 et 4, 3 fois
//
//        }
//
//
//
//        if let choice = readLine() {
//            switch choice {
//            case "1": // Create a Fighter
//            characters.append(Fighter(name: ""))
//            case "2": // Create a Magus
//            characters.append(Magus(name: ""))
//            case "3": // Create a Colossus
//            characters.append(Colossus(name: ""))
//            case "4": // Create a Dwarf
//            characters.append(Dwarf(name: ""))
//            default: break
//          }
//        }

    }
    
}
