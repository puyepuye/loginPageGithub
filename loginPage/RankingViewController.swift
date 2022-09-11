//
//  RankingViewController.swift
//  loginPage
//
//  Created by KMIDS on 4/9/2565 BE.
//

import UIKit
struct Celldata {
    let title: String
    let backgroundImage: String
}

class RankingViewController: UIViewController{
    @IBOutlet var collectionView: UICollectionView!
    
    let data: [Celldata] = [
        Celldata(title: "Call of Duty", backgroundImage: "callOfDuty"),
        Celldata(title: "FortNite", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
        Celldata(title: "DearHelpGod", backgroundImage: "elephantLogo2"),
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 90, height: 110)
        collectionView.collectionViewLayout = layout
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(RankingCollectionViewCell.nib(), forCellWithReuseIdentifier: RankingCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
}

extension RankingViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
extension RankingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = data[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell.identifier, for: indexPath) as! RankingCollectionViewCell
        //cell.data = self.data[indexPath.row]
        //cell.configure(with: UIImage(named: "background")!)
        cell.imageView.image = UIImage(named: data.backgroundImage)
        return cell
        
    }
    
}
extension RankingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 90, height: 110)
    }
    
}


class RankingCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!

    static let identifier = "RankingCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    static func nib() -> UINib{
        return UINib(nibName: "RankingCollectionViewCell", bundle: nil)
    }
    
    
}


