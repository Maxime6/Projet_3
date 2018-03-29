//
//  Character.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Character {
    
    var name: String
    var vitalityPoints: Int
    var weapon: Weapon
    let vitalityMax: Int
    
    init(name: String, vitalityPoints: Int, weapon: Weapon, vitalityMax: Int) {
        self.name = name
        self.vitalityPoints = vitalityPoints
        self.weapon = weapon
        self.vitalityMax = vitalityMax
    }
    
    func attack(target: Character) {
        //
        target.vitalityPoints -= weapon.damage
        // Check that vitality is not negative
        if target.vitalityPoints < 0 {
            target.vitalityPoints = 0
            print("\(target.name) loses his last pdv...")
            print("\(target.name) is dead. ☠️")
            print("")
        } else if target.vitalityPoints == 0 {
            print("\(target.name) loses his last pdv...")
            print("\(target.name) is dead. ☠️")
            print("")
        } else {
            // print of the action
            print("\(target.name) loses \(weapon.damage) pdv 🤕 - ♥️ = \(target.vitalityPoints)")
            print("")
        }
    }
    
    // Description of the characters
    func description(index: Int) {
        print(" \(index) . \(name) . \(vitalityPoints) pdv . \(weapon.name) damage : \(weapon.damage) ")
        
    }
    
}
