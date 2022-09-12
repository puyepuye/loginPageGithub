//
//  LiveViewController.swift
//  loginPage
//
//  Created by KMIDS on 12/9/2565 BE.
//

import UIKit

class LiveViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var imageArray1 = [UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2")]
    var imageArray2 = [UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2")]
    var imageArray3 = [UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2"), UIImage(named:"elephantLogo2")]
    
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    @IBOutlet weak var collectionViewC: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
        collectionViewC.delegate = self
        collectionViewC.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         if collectionView == self.collectionViewA {
           return imageArray1.count
         } else if collectionView == self.collectionViewB {
           return imageArray2.count
         } else {
             return imageArray3.count
         }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewA {
            //let data = data[indexPath.row]
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            cellA.image1.image = imageArray1[indexPath.row]
            //cellA.
            return cellA
        } else if collectionView == self.collectionViewB {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            cellB.image2.image = imageArray2[indexPath.row]
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionViewCell", for: indexPath) as! LiveCollectionViewCell
            cellC.image3.image = imageArray3[indexPath.row]
            return cellC
        }
    }
}
