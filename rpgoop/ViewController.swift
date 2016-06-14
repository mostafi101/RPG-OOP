//
//  ViewController.swift
//  rpgoop
//
//  Created by Mostafijur Rahaman on 6/14/16.
//  Copyright © 2016 Mostafijur Rahaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "DirtyLaundry26", startingHp: 110, attackPwr: 20)
        generteRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        enemyHpLbl.text = "\(enemy.hp) HP"
    }
    
    func generteRandomEnemy(){
        let rand = Int(arc4random_uniform(UInt32(2)))
        if(rand == 0){
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        }else{
            enemy = DavilWizard(startingHp: 60, attackPwr: 15)
        }
        
        enemyImg.hidden = false
    }

    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generteRandomEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func attackBtnTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPw){
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPw) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        }else{
            printLbl.text = "Attacked was unsuccessful"
        }
        
        if let loot = enemy.dropLoot(){
            player.addInventory(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive{
            printLbl.text = "Killed \(enemy.type)"
            enemyHpLbl.text = ""
            enemyImg.hidden = true
        }
        
    }
    
}

