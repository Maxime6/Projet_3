//
//  Character.swift
//  Projet_3
//
//  Created by Maxime Tanter on 02/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Character {
    
    // Name of the character
    var name: String
    // Vitality of the character
    var vitalityPoints: Int
    // Weapon of the character
    var weapon: Weapon
    // Vitality Max of the character
    let vitalityMax: Int
    
    init(name: String, vitalityPoints: Int, weapon: Weapon, vitalityMax: Int) {
        self.name = name
        self.vitalityPoints = vitalityPoints
        self.weapon = weapon
        self.vitalityMax = vitalityMax
    }
    
    // Attack an opposing character
    func attack(target: Character) {
        if vitalityPoints > 0 {
            // Calculation of damage
            target.vitalityPoints -= weapon.damage
            // Check that vitality is not negative
            if target.vitalityPoints < 0 || target.vitalityPoints == 0 {
                target.vitalityPoints = 0
                print("")
                print("\(target.name) loses his last pdv...")
                print("\(target.name) is dead. ☠️")
                print("")
                // If vitality is superior to zero
            } else {
                // print of the action
                print("")
                print("\(target.name) loses \(weapon.damage) pdv 🤕 - ♥️ = \(target.vitalityPoints)")
                print("")
            }
        } else {
            print("I can't attack because i'm dead..")
        }
    }
    // Description of the characters
    func description(index: Int) {
        
        if self is Magus {
            print(" \(index) . \(name) . \(vitalityPoints) pdv . \(weapon.name) care : \(weapon.care) ")
        } else {
            print(" \(index) . \(name) . \(vitalityPoints) pdv . \(weapon.name) damage : \(weapon.damage) ")
        }
    }
    
}
