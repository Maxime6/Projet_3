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
    
    var userChoice = 0
    
    var numberOfLaps = 0
    
    func start() {
        print("Hi")
        
        for i in 0..<2 {
            print("Created Team \(i+1):")
            let team = createATeam()
            teams.append(team)
        }
        print("It's time to fight !")
        fight()
        winnerIs()
    }
    
    func createATeam() -> Team {
        let team = Team()
        team.createCharacter()
        return team
    }
    
    func selectCharacter() {
        repeat {
            userChoice = Input.inputInt()
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
    }
    
    func healPhase(index: Int, magus: Magus) {
        print("Select the character you want to heal :")
        teams[index].teamDescription()
        selectCharacter()
        magus.heal(target: teams[index].characters[userChoice - 1])
    }
    
    func fightPhase(index: Int, currentCharacter: Character) {
        print("Select the opposing character you want to attack :")
        // Show the opposing team
        teams[index].teamDescription()
        // Seletc the character to attack
        selectCharacter()
        // Attack
        currentCharacter.attack(target: teams[index].characters[userChoice - 1])
    }
    
    func winnerIs() {
        for i in 0..<teams.count {
            let team = teams[i]
            if team.teamIsDead() {
                print("Team N°\(i + 1) win in \(numberOfLaps) laps.")
            }
        }
    }
    
    func magicChest(character: Character) {
        // un nombre aléatoire
        let randomNumber = arc4random_uniform(100)
        if randomNumber > 80 {
            print("A Chest appears !")
            print("")
            
            if let magus = character as? Magus {
                let legendaryWand = LegendaryWand()
                magus.weapon = legendaryWand
            } else {
                let hammerOfGod = HammerOfGod()
                character.weapon = hammerOfGod
            }
        }

    }
   
    func fight() {
        
        while true {
            numberOfLaps += 1
            
            for i in 0...1 {
                
                
                print("Player \(i + 1), select your character by tiping 1, 2 or 3 :")
                
                // Show the team doing the action
                teams[i].teamDescription()
                
                // Select the character who does the action
                selectCharacter()
                
                // Check if the character is a Magus
                let currentCharacter = teams[i].characters[userChoice - 1]
                
                magicChest(character: currentCharacter)
                
                // If it's a Magus
                if let magus = currentCharacter as? Magus {
                    healPhase(index: i, magus: magus)
                    // If not
                } else {
                    if i == 0 {
                        fightPhase(index: i + 1, currentCharacter: currentCharacter)
                        // Calculate Team vitality
                        if teams[i+1].teamIsDead() {
                            return
                        }
                    } else {
                        fightPhase(index: i - 1, currentCharacter: currentCharacter)
                        // Calculate Team vitality
                        if teams[i-1].teamIsDead() {
                            return
                        }
                    }
                }
            }
        }
    }
    
}


