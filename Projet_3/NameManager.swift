//
//  NameManager.swift
//  Projet_3
//
//  Created by Maxime Tanter on 16/03/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class NameManager {
    
    static let shared = NameManager()
    
    private init() { }
    var names = [String]()
    
    // Check unique name in program
    func uniqueCharacterName() -> String {
        var name = ""
        repeat {
            name = Input.inputString()
            if names.contains(name) {
                print("⚠️ This character name is already taken.")
                print("Please choose another name :")
                name = ""
            }
            names.append(name)
        } while name == ""
        return name
    }
}
