//
//  Game.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Game {
    
    var teams = [Team]()
    
    func start() {
        print("intro")
        
        for i in 0..<2 {
            print("Created Team \(i+1):")
            let team = createATeam()
            teams.append(team)
        }
        fight()
    }
    
    func createATeam() -> Team {
        let team = Team()
        team.createCharacter()
        return team
    }
   
    func fight() {
        
        var userChoice = 0
        
        for i in 0...1 {
            
            print("It's time to fight !")
            print("Player \(i), select your character by tiping 1, 2 or 3 :")
            // Show the team doing the action
            teams[i].teamDescription()
            // Select the character who does the action
            repeat {
                userChoice = Input.inputInt()
            } while userChoice != 1 && userChoice != 2 && userChoice != 3
            
            // Check if the character is a Magus
            let currentCharacter = teams[i].characters[userChoice]
            // If it's a Magus
            if let magus = currentCharacter as? Magus {
                teams[i].teamDescription()
                repeat {
                    userChoice = Input.inputInt()
                } while userChoice != 1 && userChoice != 2 && userChoice != 3
                magus.heal(target: teams[i].characters[userChoice])
                // If not
            } else {
                // Show the opposing team
                teams[i+1].teamDescription()
                // Seletc the character to attack
                repeat {
                    userChoice = Input.inputInt()
                } while userChoice != 1 && userChoice != 2 && userChoice != 3
                // Attack
                currentCharacter.attack(target: teams[i+1].characters[userChoice])
            }
        }

        
//        while teamVitality != 0 {
//
//        }
        
        
 
        
//        for i in 0..<2 {
//            let personnage = teams[i].characters[0]
//            personnage.attack(target: <#T##Character#>)
//        }
//
    }
}


