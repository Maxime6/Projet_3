//
//  Game.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Game {
    
    // The teams of the game
    var teams = [Team]()
    
    // User choice
    var userChoice = 0
    
    // Number of Laps
    var numberOfLaps = 0
    
    // Launch the program
    func start() {
        print("➢ Hi ! Welcome to this fighting game ⚔️ !")
        print("")
        print("Each player creates a team of 3 characters(with a unique name for each),")
        print("who will compete in a turn-based combat 💪🏼")
        print("Each characters inflicts damage, except the magus, who has the ability to heal his brother-in-arms")
        print("")
        print("LET'S GO !! 🤜🏼")
        print("")
        
        // Creation of the 2 teams
        for i in 0..<2 {
            print("")
            print("➢ PLAYER N°\(i+1), created your Team :")
            let team = createATeam()
            teams.append(team)
        }
        print("")
        print("➢ Both teams are done 👍🏼")
        print("")
        print("   ARE YOU READY ⁉️")
        print("")
        print("➢ IT'S TIME TO FIGHT ‼️")
        print("")
        
        fight()
        
        winnerIs()
    }
    
    // Team creation
    func createATeam() -> Team {
        let team = Team()
        team.createCharacter()
        return team
    }
    
    // User choice
    func selectCharacter() {
        repeat {
            userChoice = Input.inputInt()
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
    }
    
    // Heal phase
    func healPhase(index: Int, magus: Magus) {
        print("Select the character you want to heal 💗 :")
        // Show his own team
        teams[index].teamDescription()
        // Select the character to heal
        selectCharacter()
        // Heal
        magus.heal(target: teams[index].characters[userChoice - 1])
    }
    
    // Fight phase
    func fightPhase(index: Int, currentCharacter: Character) {
        print("Select the opposing character you want to attack 👊🏼:")
        // Show the opposing team
        teams[index].teamDescription()
        // Seletc the character to attack
        selectCharacter()
        // Attack
        currentCharacter.attack(target: teams[index].characters[userChoice - 1])
    }
    
    // Designate the winner
    func winnerIs() {
        for i in 0..<teams.count {
            let team = teams[i]
            if team.teamIsDead() {
                print("⚔️ THE FIGHT IS OVER ⚔️")
                print("")
                print("🎖🎖🎖")
                print("Player N°\(i + 1) wins the fight in \(numberOfLaps) laps 🏆")
                print("🎖🎖🎖")
            }
        }
    }
    
    // Make a chest appear randomly
    func magicChest(character: Character) {
        // Set a random number
        let randomNumber = arc4random_uniform(100)
        if randomNumber > 80 {
            print("")
            print("👀 A CHEST APPEARS ❗️")
            print("You find an overpowering new weapon 🤩")
            print("")
            
            // If it's a magus
            if let magus = character as? Magus {
                // Make a Legendary Wand appear
                let legendaryWand = LegendaryWand()
                magus.weapon = legendaryWand
                print("\(character.name) equips himself of the Legendary Wand ❗️(💗 = 40) ")
                print("")
                // If not
            } else {
                // Make a Hammer Of God appear
                let hammerOfGod = HammerOfGod()
                character.weapon = hammerOfGod
                print("\(character.name) equips himself of the Hammer Of God ❗️(💥 = 40)")
                print("")
            }
        }

    }
   
    // Flow of the fight
    func fight() {
        
        while true {
            numberOfLaps += 1
            
            for i in 0...1 {
                
                
                print("☞ Player \(i + 1), select your character :")
                
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


