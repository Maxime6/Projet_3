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
    
    init(name: String, vitalityPoints: Int, weapon: Weapon) {
        self.name = name
        self.vitalityPoints = vitalityPoints
        self.weapon = weapon
    }
    
    func attack(target: Character) {
        target.vitalityPoints -= weapon.damage
    }
}
