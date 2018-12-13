//
//  StartViewController.swift
//  tesla
//
//  Created by Sonar on 12/13/18.
//  Copyright © 2018 Sonar. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var teslaLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teslaLogo.alpha = 0.0
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateLogo()
    }
    
    func animateLogo() {
        UIView.animate(withDuration: 3) {
            self.teslaLogo.alpha = 1.0
            //self.view.layoutIfNeeded()
        }
    
    }
    //Fix and make it change vc automatically
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 2) {
        let firstVC =
            self.storyboard?.instantiateViewController(withIdentifier: "FirstVC")
        firstVC?.modalTransitionStyle = .crossDissolve
        self.present(firstVC!, animated: true, completion: nil)
        }
    }

}
