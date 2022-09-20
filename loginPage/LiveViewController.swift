//
//  LiveViewController.swift
//  loginPage
//
//  Created by KMIDS on 12/9/2565 BE.


import UIKit
import Kingfisher

class LiveViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var imageArray1 = ["https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg", "https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/m/mario-kart-8-deluxe-switch/hero", "https://cdn.vox-cdn.com/thumbor/qXIegymAZU6HdA4XjeTOY5YEFXU=/139x136:2861x1565/fit-in/2722x1429/cdn.vox-cdn.com/uploads/chorus_asset/file/23067480/jbareham_211201_ecl1139_goty_2021_top50_16x9_no_bug.jpg"]
    var labelnumView = ["9.1k","8.2k","7.2k", "3.3k"]
    
    
    var imageArray2 = ["https://seeklogo.com/images/V/valorant-logo-FAB2CA0E55-seeklogo.com.png", "https://i.pinimg.com/originals/27/ff/39/27ff3902c1363a776c9db6ee6f7d76d8.jpg", "https://images.droidsans.com/wp-content/uploads/2019/05/League-of-Legends.jpg", "https://gmedia.playstation.com/is/image/SIEPDC/genshin-impact-3-0-keyart-01-ps4-12aug22$en?$native$", "https://seeklogo.com/images/V/valorant-logo-FAB2CA0E55-seeklogo.com.png", "https://i.pinimg.com/originals/27/ff/39/27ff3902c1363a776c9db6ee6f7d76d8.jpg", "https://images.droidsans.com/wp-content/uploads/2019/05/League-of-Legends.jpg", "https://gmedia.playstation.com/is/image/SIEPDC/genshin-impact-3-0-keyart-01-ps4-12aug22$en?$native$"]
    var labelArrayB = ["Valorant", "Dota", "League of Lengends", "Genshin Impact", "Valorant", "Dota", "League of Lengends", "Genshin Impact"]
    var imageArray3 = ["https://gmedia.playstation.com/is/image/SIEPDC/overwatch-2-screenshot-ensemble-01-en-11jul22?$native$", "https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/a/animal-crossing-new-horizons-switch/hero", "https://www.blognone.com/sites/default/files/externals/ede93c334a4c99b0435cccce1256c44e.jpg"]
    var numberofView2 = ["5.1k","2.2k","3.2k"]
    
    var label2 = ["mac", "puye", "poon"]
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var searchView: UIView!
    
    
    //@IBOutlet weak var image2Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        collectionView1.delegate = self
        collectionView1.dataSource = self
        self.seperatorView.backgroundColor = UIColorFromHex(rgbValue: 0x505051,alpha: 1)
        
        searchView.layer.borderWidth = 1
        searchView.layer.borderColor = UIColor.white.cgColor
        /*
        image1numView.layer.cornerRadius = 25
        image1numView.layer.backgroundColor = CGColor(red: (51/255.0), green: (51/255.0), blue: (51/255.0), alpha: 0.4)*/
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         if collectionView == self.collectionView1 {
           return imageArray1.count
         } else if collectionView == self.collectionView2 {
           return imageArray2.count
         } else {
             return imageArray3.count
         }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            //let data = data[indexPath.row]
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            //cellA.imageA.image = imageArrayA[indexPath.row]
            cellA.image1.kf.indicatorType = .activity
            cellA.image1.kf.setImage(with: URL(string: imageArray1[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            //cellA.
            cellA.numberofView.text = labelnumView[indexPath.row]
            return cellA
        } else if collectionView == self.collectionView2 {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            cellB.image2.kf.indicatorType = .activity
            cellB.image2.kf.setImage(with: URL(string: imageArray2[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            //cellB.imageB.image = imageArrayB[indexPath.row]
            cellB.image2label.text = labelArrayB[indexPath.row]
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            //cellC.imageC.image = imageArrayC[indexPath.row]
            cellC.image3.kf.indicatorType = .activity
            cellC.image3.kf.setImage(with: URL(string: imageArray3[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            cellC.numberofView2.text = numberofView2[indexPath.row]
            return cellC
        }
    }
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
}
