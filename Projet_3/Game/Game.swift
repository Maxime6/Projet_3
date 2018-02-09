//
//  Game.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

class Game {
    
    var character = [Character]()
    
    var team1 = [Character]()
    
    var team2 = [Character]()
    
    func createAFighter() {
        team1.append(Fighter())
    }
    
    func createAMagus() {
        
    }
    
    func createAColossus() {
        
    }
    
    func createADwarf() {
        
    }
    
    func createCharacter() {
        print("Select a Character :")
        print("1. Fighter")
        print("2. Magus")
        print("3. Colossus")
        print("4. Dwarf")
        
        if let choice = readLine() {
            switch choice {
            case "1": // Create a Fighter
                createAFighter()
            case "2": // Create a Magus
                createAMagus()
            case "3": // Create a Colossus
                createAColossus()
            case "4": // Create a Dwarf
                createADwarf()
            default: 
            }
        }
    }
    
    func createATeam() {
        print("Create your first Team :")
        while team1.count <= 3 {
            createCharacter()
        } if else 
    }
    
}


