//
//  signUpViewController.swift
//  loginPage
//
//  Created by KMIDS on 8/8/2565 BE.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var emailTF: UITextField!
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passWordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.delegate = self
        userNameTF.delegate = self
        passWordTF.delegate = self
        
        self.navigationController?.navigationBar.isHidden = true
        
        let emailBottomLine = CALayer()
        emailBottomLine.frame = CGRect(x: 0, y: emailTF.frame.height - 2, width: emailTF.frame.width, height: 2)
        emailBottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        emailTF.borderStyle = .none
        emailTF.layer.addSublayer(emailBottomLine)
        
        let userNameBottomLine = CALayer()
        userNameBottomLine.frame = CGRect(x: 0, y: userNameTF.frame.height - 2, width: userNameTF.frame.width, height: 2)
        userNameBottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        userNameTF.borderStyle = .none
        userNameTF.layer.addSublayer(userNameBottomLine)
        
        let passWordBottomLine = CALayer()
        passWordBottomLine.frame = CGRect(x: 0, y: passWordTF.frame.height - 2, width: passWordTF.frame.width, height: 2)
        passWordBottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        passWordTF.borderStyle = .none
        passWordTF.layer.addSublayer(passWordBottomLine)
        
        
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backToLogin", sender: self)
    }
    
}
