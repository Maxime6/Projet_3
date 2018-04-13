//
//  Magus.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Magus: Character {
    
    init(name: String) {
        super.init(name: name, vitalityPoints: 70, weapon: Wand(), vitalityMax: 70)
    }
    
    // Heal a character of own team
    func heal(target: Character) {
        if target.vitalityPoints > 0 {
            // Calculation of heal
            target.vitalityPoints += weapon.care
            // Check the vitality max
            if target.vitalityPoints > target.vitalityMax || target.vitalityPoints == target.vitalityMax {
                target.vitalityPoints = target.vitalityMax
                print("\(target.name) has recovered all his pdv 💗💪🏼")
                print("")
                // If it's not vitality max
            } else {
                print("\(target.name) has recovered \(weapon.care)pdv 💗 - ♥️ = \(target.vitalityPoints)")
                print("")
            }
        } else {
            print("I can't heal because \(target.name) is dead..")
        }
    }
}
