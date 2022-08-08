//
//  LoginViewController.swift
//  loginPage
//
//  Created by KMIDS on 5/8/2565 BE.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
   
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
        self.navigationController?.navigationBar.isHidden = true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.userNameTextField.resignFirstResponder()
        self.passWordTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        if let textUserName = self.userNameTextField.text, textUserName.isEmpty{
            return
        } else if let textPassword = self.passWordTextField.text, textPassword.isEmpty {
            return
        }
        self.performSegue(withIdentifier: "success", sender: self)
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backToJoin", sender: self)
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "createAccount", sender: self)
    }
    
    //insert
    //inserting the guest
}
