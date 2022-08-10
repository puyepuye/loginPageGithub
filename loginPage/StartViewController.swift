//
//  LoginViewController.swift
//  loginPage
//
//  Created by KMIDS on 5/8/2565 BE.
//

import UIKit

class StartViewController : UIViewController {
    
    @IBOutlet var image1: UIImageView!
    
    @IBOutlet var image2: UIImageView!
    @IBOutlet var joinNow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.layer.cornerRadius = image1.frame.size.width / 2
        image1.clipsToBounds = true
        image2.layer.cornerRadius = image2.frame.size.width / 2
        image2.clipsToBounds = true
    }
    
    @IBAction func joinNowTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "joinNow", sender: self)
    }
    
    
}


