//
//  RankingCollectionViewCell.swift
//  loginPage
//
//  Created by KMIDS on 4/9/2565 BE.
//

import UIKit

class RankingCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "RankingCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    public func configure(with image: UIImage) {
        imageView.image = image
    }
    static func nib() -> UINib{
        return UINib(nibName: "RankingCollectionViewCell", bundle: nil)
    }
}
