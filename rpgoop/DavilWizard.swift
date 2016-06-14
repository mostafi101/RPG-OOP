//
//  DavilWizard.swift
//  rpgoop
//
//  Created by Mostafijur Rahaman on 6/14/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import Foundation

class DavilWizard: Enemy{
    
    override var loot: [String]{
        get{
            return ["Magic Wand", "Dark Amulate", "Salted pork"]
        }
    }
    
    override var type: String{
        get{
            return "Davil Wizard"
        }
    }
}