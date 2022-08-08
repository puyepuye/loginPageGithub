//
//  signUpViewController.swift
//  loginPage
//
//  Created by KMIDS on 8/8/2565 BE.
//

import UIKit

class signUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backToLogin", sender: self)
    }
    
}
