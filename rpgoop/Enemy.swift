//
//  Enemy.swift
//  rpgoop
//
//  Created by Mostafijur Rahaman on 6/14/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import Foundation

class Enemy: Character{
    var loot: [String]{
        get{
            return ["Rusty Dagger", "Cracked Buckler"]
        }
    }
    
    var type: String{
        get{
            return "Grunt"
        }
    }
    
    func dropLoot() -> String?{
        if !self.isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        
        return nil
    }
}