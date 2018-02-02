//
//  Fighter.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

class Fighter: Character {
    
    init(name: String) {
        super.init(name: name, vitalityPoints: 100, weapon: Sword())
    }
}
