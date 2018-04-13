//
//  Weapon.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Weapon {
    
    // Name of the weapon
    var name: String
    // Damage of the weapon
    var damage: Int
    // Care of the weapon
    var care : Int
    
    init(name: String, damage: Int, care: Int) {
        self.name = name
        self.damage = damage
        self.care = care
    }
}
