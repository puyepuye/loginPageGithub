//
//  LiveViewController.swift
//  loginPage
//
//  Created by KMIDS on 12/9/2565 BE.


import UIKit
import Kingfisher

class LiveViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var imageArray1 = ["https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg", "https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg", "https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg"]
    var imageArray2 = ["https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg", "https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg", "https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg"]
    var imageArray3 = ["https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg", "https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg", "https://assets.beartai.com/uploads/2019/06/Fortnite_video-recap_08BR_Web_Wrap-Up_Landingpage-1920x1080-b8bb845212e05934128cfb80f9fab7d7cbbf205b.jpg"]
    var label2 = ["mac", "puye", "poon"]
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var searchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        collectionView1.delegate = self
        collectionView1.dataSource = self
        self.seperatorView.backgroundColor = UIColorFromHex(rgbValue: 0x505051,alpha: 1)
        
        searchView.layer.borderWidth = 1
        searchView.layer.borderColor = UIColor.white.cgColor
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
            return cellA
        } else if collectionView == self.collectionView2 {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            cellB.image2.kf.indicatorType = .activity
            cellB.image2.kf.setImage(with: URL(string: imageArray2[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            //cellB.imageB.image = imageArrayB[indexPath.row]
            //cellB.image2label.text = "mac"
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            //cellC.imageC.image = imageArrayC[indexPath.row]
            cellC.image3.kf.indicatorType = .activity
            cellC.image3.kf.setImage(with: URL(string: imageArray3[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
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
