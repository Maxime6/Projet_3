//
//  Weapon.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Weapon {
    
    var name: String
    var damage: Int
    var care : Int
    
    init(name: String, damage: Int, care: Int) {
        self.name = name
        self.damage = damage
        self.care = care
    }
}
