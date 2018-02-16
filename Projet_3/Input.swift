//
//  Input.swift
//  Projet_3
//
//  Created by Maxime Tanter on 16/02/2018.
//  Copyright © 2018 Maxime Tanter. All rights reserved.
//

import Foundation

class Input {
    
    static func inputString() -> String {
        guard let data = readLine() else { return "" }
        return data
    }
    
    static func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let result = Int(data) else { return 0 }
        return result
    }

}
