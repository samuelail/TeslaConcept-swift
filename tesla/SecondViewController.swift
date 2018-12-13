//
//  SecondViewController.swift
//  tesla
//
//  Created by Sonar on 12/12/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tempGuage: UILabel!
    @IBOutlet weak var insideGuage: UILabel!
    @IBOutlet weak var outsideGuage: UILabel!
    @IBOutlet weak var coolBtn: UIButton!
    @IBOutlet weak var heatBtn: UIButton!
    @IBOutlet weak var coolheat: UIImageView!
    
    var guage = 22
    var insidetemp = 20
    
    override func viewDidLoad() {
  
        super.viewDidLoad()

        self.tempGuage.text = String(guage)+"°C"
        
    }
    
    //Temperature control buttons
    @IBAction func increaseTemp(_ sender: Any) {

        guage += 1
        self.tempGuage.text = String(guage)+"°C"
    }
    @IBAction func decreaseTemp(_ sender: Any) {
        guage -= 1
        self.tempGuage.text = String(guage)+"°C"
    }
    
    //Toggle between AC
    @IBAction func toggleHeat(_ sender: Any) {
        self.heatBtn.setImage(UIImage(named: "heatred.png"), for: .normal)
        self.coolBtn.setImage(UIImage(named: "Coolgrey.png"), for: .normal)
        self.coolheat.image = UIImage(named: "hotglow.png")
        self.heatBtn.frame.size.height = 111
        self.heatBtn.frame.size.width = 77
        self.coolBtn.frame.size.height = 89
        self.coolBtn.frame.size.width = 62
        self.tempGuage.text = "35"+"°C"
        self.insideGuage.text = "35"+"°C"
        self.view.layoutIfNeeded()
    }
    
    @IBAction func toggleCool(_ sender: Any) {
        self.coolBtn.setImage(UIImage(named: "Cool1.png"), for: .normal)
        self.heatBtn.setImage(UIImage(named: "Heat1.png"), for: .normal)
        self.coolheat.image = UIImage(named: "blueglow.png")
        self.coolBtn.frame.size.height = 111
        self.coolBtn.frame.size.width = 77
        self.heatBtn.frame.size.height = 89
        self.heatBtn.frame.size.width = 62
        self.tempGuage.text = String(guage)+"°C"
        self.insideGuage.text = String(insidetemp)+"°C"
        self.view.layoutIfNeeded()
    }
    
    
    
    
    
    
}

