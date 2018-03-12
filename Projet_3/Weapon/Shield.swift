//
//  Shield.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Shield: Weapon {
    
    var reducedDamage = 8
    
    init() {
        super.init(name: "Shield", damage: 8, care: 0)
    }
}
