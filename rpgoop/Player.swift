//
//  Player.swift
//  rpgoop
//
//  Created by Mostafijur Rahaman on 6/14/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import Foundation

class Player: Character{
    private var _name: String = "Player"
    private var _inventory = [String]()
    
    var name: String{
        get{
            return _name
        }
    }
    
    var inventory: [String]{
        get{
            return _inventory
        }
    }
    
    func addInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init(name: String, startingHp: Int, attackPwr: Int) {
        self.init(startingHp: startingHp,attackPwr: attackPwr)
        self._name = name
    }
    
}