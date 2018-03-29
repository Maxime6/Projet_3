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
    
    func heal(target: Character) {
        target.vitalityPoints += weapon.care
        // check vitalité max
        if target.vitalityPoints > target.vitalityMax || target.vitalityPoints == target.vitalityMax {
            target.vitalityPoints = target.vitalityMax
            print("\(target.name) has recovered all his pdv 💗💪🏼")
            print("")
        } else {
            print("\(target.name) has recovered \(weapon.care)pdv 💗 - ♥️ = \(target.vitalityPoints)")
            print("")
        }
    }
    
}
