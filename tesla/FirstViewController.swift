//
//  FirstViewController.swift
//  tesla
//
//  Created by Sonar on 12/12/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var trunk: UIButton!
    @IBOutlet weak var rightDoor: UIButton!
    @IBOutlet weak var root: UIButton!
    @IBOutlet weak var boot: UIButton!
    @IBOutlet weak var leftDoor: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openTrunk(_ sender: UIButton) {
        
        if (!sender.isSelected) {
            print("Door is unlocked")
            trunk.setImage(UIImage(named: "unlock.png"), for: .normal)
            
        }
        else {
            
            print("Door is locked")
            trunk.setImage(UIImage(named: "lock.png"), for: .normal)
            
        }
        sender.isSelected = !sender.isSelected
        
        
    }
    @IBAction func openRightDoor(_ sender: UIButton) {
        if (!sender.isSelected) {
            print("Door is unlocked")
            rightDoor.setImage(UIImage(named: "unlock.png"), for: .normal)
            
        }
        else {
            
            print("Door is locked")
            rightDoor.setImage(UIImage(named: "lock.png"), for: .normal)
            
        }
        sender.isSelected = !sender.isSelected
        
    }
    @IBAction func openRoof(_ sender: UIButton) {
        if (!sender.isSelected) {
            print("Door is unlocked")
            root.setImage(UIImage(named: "unlock.png"), for: .normal)
            
        }
        else {
            
            print("Door is locked")
            root.setImage(UIImage(named: "lock.png"), for: .normal)
            
        }
        sender.isSelected = !sender.isSelected
        
    }
    @IBAction func openBoot(_ sender: UIButton) {
        if (!sender.isSelected) {
            print("Door is unlocked")
            boot.setImage(UIImage(named: "unlock.png"), for: .normal)
            
        }
        else {
            
            print("Door is locked")
            boot.setImage(UIImage(named: "lock.png"), for: .normal)
            
        }
        sender.isSelected = !sender.isSelected
        
    }
    @IBAction func openLeftDoor(_ sender: UIButton) {
        if (!sender.isSelected) {
            print("Door is unlocked")
            leftDoor.setImage(UIImage(named: "unlock.png"), for: .normal)
            
        }
        else {
            
            print("Door is locked")
            leftDoor.setImage(UIImage(named: "lock.png"), for: .normal)
            
        }
        sender.isSelected = !sender.isSelected
        
    }
    
}

