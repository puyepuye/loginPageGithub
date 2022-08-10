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
        
        let userNameBottomLine = CALayer()
        userNameBottomLine.frame = CGRect(x: 0, y: userNameTextField.frame.height - 2, width: userNameTextField.frame.width, height: 2)
        userNameBottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        userNameTextField.borderStyle = .none
        userNameTextField.layer.addSublayer(userNameBottomLine)
        
        let passWordBottomLine = CALayer()
        passWordBottomLine.frame = CGRect(x: 0, y: passWordTextField.frame.height - 2, width: passWordTextField.frame.width, height: 2)
        passWordBottomLine.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        passWordTextField.borderStyle = .none
        passWordTextField.layer.addSublayer(passWordBottomLine)
        
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
        let textEmail = self.userNameTextField.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewcontroller = storyboard.instantiateViewController(withIdentifier: "ResponseViewController") as?
            ResponseViewController { viewcontroller.textEmail = textEmail ?? ""
            self.navigationController?.pushViewController(viewcontroller, animated: false)
        }
        //self.performSegue(withIdentifier: "success", sender: self)
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
