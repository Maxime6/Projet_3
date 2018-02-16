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

//        for i in 0..<2 {
//            let personnage = teams[i].characters[0]
//            personnage.attack(target: <#T##Character#>)
//        }
//
    }
}


