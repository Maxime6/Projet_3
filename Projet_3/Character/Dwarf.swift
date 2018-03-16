//
//  Dwarf.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Dwarf: Character {
    
    init(name: String) {
        super.init(name: name, vitalityPoints: 60, weapon: Axe(), weapon2: HammerOfGod(), vitalityMax: 60)
    }
}
