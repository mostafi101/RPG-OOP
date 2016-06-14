//
//  Character.swift
//  rpgoop
//
//  Created by Mostafijur Rahaman on 6/14/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import Foundation

class Character{
    private var _attackPwr: Int = 10
    private var _hp: Int = 100
    
    var attackPw: Int{
        get{
            return _attackPwr
        }
    }
    
    var hp: Int{
        get{
            return _hp
        }
    }
    
    var isAlive: Bool{
        get{
            if _hp <= 0{
                return false
            }else{
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPwr: Int){
        self._attackPwr = attackPwr
        self._hp = startingHp
    }
    
    func attemptAttack(attackPwr: Int) -> Bool{
        self._hp -= attackPwr
        
        return true
    }
}