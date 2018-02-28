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
        super.init(name: name, vitalityPoints: 70, weapon: Wand())
    }
    
    func heal(target: Character) {
        target.vitalityPoints += weapon.damage
    }
}
