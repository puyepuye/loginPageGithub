//
//  ResponseViewController.swift
//  loginPage
//
//  Created by KMIDS on 10/8/2565 BE.
//

import UIKit

class ResponseViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    var textEmail = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.emailLabel.text = self.textEmail
    }
    



}
