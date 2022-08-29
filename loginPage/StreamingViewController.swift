//
//  StreamingViewController.swift
//  loginPage
//
//  Created by KMIDS on 17/8/2565 BE.
//

import UIKit

class StreamingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    
    struct Icon {
        let title: String
        let imageName: String
        let numView: String
        let profileImageName: String
        let profileLabel: String
    }
    
    let data: [Icon] = [
        Icon(title: "Game Pro Ti...", imageName: "streamBlock1", numView: "78.4k Viewers", profileImageName: "profile1", profileLabel: "Rishab"),
        Icon(title: "Game Tournament", imageName: "streamBlock2", numView: "23.5K Viewers", profileImageName: "profile2", profileLabel: "Ravi"),
        Icon(title: "World Tournament", imageName: "streamBlock3", numView: "20.5k Viewers", profileImageName: "profile3", profileLabel: "Agnes"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        //let bgBlack = UIColor(hex:"#000000")
        self.table.backgroundColor = .black

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let icon = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        //let bgBlack = UIColor(hex:"#000000")
        cell.label.text = icon.title
        cell.iconImageView.image = UIImage(named: icon.imageName)
        //cell.numView.text = icon.numView
        //cell.profileIcon.image = UIImage(named: icon.profileImageName)
        //cell.profileLabel.text = icon.profileLabel
        cell.backgroundColor = .black
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 110
    }
    
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
