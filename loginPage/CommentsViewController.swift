//
//  CommentsViewController.swift
//  loginPage
//
//  Created by KMIDS on 26/9/2565 BE.
//

import UIKit
import Kingfisher
/*var profilePic = ["https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png", "https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png", "https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png", "https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png", "https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png"]*/
var profilePic = ["https://i.pinimg.com/736x/e8/51/b9/e851b9386007ff50244b02273c1c119d.jpg", "https://i.pinimg.com/736x/84/d6/be/84d6be670a061e2bdafa843dba6caa5a.jpg", "https://i.pinimg.com/736x/d9/72/9e/d9729e1bc6a29ab7efa31ed312e26c75.jpg",  "https://cdns-images.dzcdn.net/images/artist/9cc9e15d1bfee83d725d888fc9b75183/264x264.jpg", "https://wallpapercave.com/wp/wp9848261.jpg"]
class CommentsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var commentsView: UIView!
    @IBOutlet weak var inputComment: UIView!
    @IBOutlet weak var streamingBackground: UIImageView!
    
    struct Icon {
        let commentText: String
        let commentName: String
    }
    
    let data: [Icon] = [
        Icon(commentText: "I don't know where you are.", commentName: "Piyush"),Icon(commentText: "guessing game ", commentName: "Jagjit"),Icon(commentText: "You're so pretty", commentName: "Pradeep"),Icon(commentText: "You are so good", commentName: "Gunnagyam"),Icon(commentText: "I hope you don't cry.", commentName: "Sumit"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.delegate = self
        collectionView1.dataSource = self
        self.commentsView.backgroundColor = UIColorFromHex(rgbValue: 0x272727,alpha: 1)
      
        //let yourColor : UIColor = UIColor( red: 0.35, green: 0.3, blue:0.1, alpha: 1.0 )
        let yourColor: UIColor = UIColor(red:249/255, green:185/255, blue:76/255, alpha: 1)
        inputComment.layer.borderWidth = 1
        inputComment.layer.borderColor = yourColor.cgColor
        
        streamingBackground.kf.indicatorType = .activity
        streamingBackground.kf.setImage(with: URL(string: "https://img.4gamers.com.tw/ckfinder-th/image2/auto/2022-01/valorant%20%E0%B8%95%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B8%84%E0%B9%88%E0%B8%B2%202022-220112-124302.png?versionId=5SBxpRdubZyRbeS2zzCL4R4Yk0pqpiRm"), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profilePic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let icon = data[indexPath.row]
        let cellComment = collectionView.dequeueReusableCell(withReuseIdentifier: "CommentsCollectionViewCell", for: indexPath) as! CommentsCollectionViewCell
        //cellA.imageA.image = imageArrayA[indexPath.row]
        cellComment.commentProfile.kf.indicatorType = .activity
        cellComment.commentProfile.kf.setImage(with: URL(string: profilePic[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
        cellComment.commentText.text = icon.commentText
        cellComment.commentName.text = icon.commentName
        return cellComment
        
    }
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

}
