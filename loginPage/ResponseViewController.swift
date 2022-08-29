//
//  ResponseViewController.swift
//  loginPage
//
//  Created by KMIDS on 10/8/2565 BE.
//

import UIKit
import Kingfisher
class ResponseViewController: UIViewController {
    /*
    let url = URL(string: "https://example.com/image.png")
    imageView.kf.setImage(with: url)
     */
    @IBOutlet var emailLabel: UILabel!
    
    var textEmail = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        self.emailLabel.text = self.textEmail
    }


}
