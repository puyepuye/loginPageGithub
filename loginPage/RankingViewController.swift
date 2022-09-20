import UIKit
import Kingfisher

struct Celldata {
    let title: String
    let backgroundImage: String
}
class RankingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    //copy image address
    //var imageArrayA = ["https://images7.alphacoders.com/472/thumb-1920-472347.jpg", URL(string: "https://www.pbs.org/wnet/nature/files`/2021/05/frog-1280x720.png"), URL(string: "https://images7.alphacoders.com/472/thumb-1920-472347.jpg"), URL(string: "https://images7.alphacoders.com/472/thumb-1920-472347.jpg")]
    var imageArrayA = ["https://m.media-amazon.com/images/M/MV5BNzU2YTY2OTgtZGZjZi00MTAyLThlYjUtMWM5ZmYzOGEyOWJhXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg","https://i.kym-cdn.com/photos/images/newsfeed/001/258/706/739.jpg","https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/VALportrait_1200x1600-74261a10f40a6a5015f069ddb7aa910c", "https://www.nintendo.com/th/switch/aabp/img/hero_sp.jpg"]
    //var imageArrayB = [UIImage(named:"achievement1"), UIImage(named:"achievement2"), UIImage(named:"achievement1"),UIImage(named:"achievement2")]
    //badge
    var imageArrayB = ["https://www.pngmart.com/files/9/Award-Badge-PNG-Image.png","https://w7.pngwing.com/pngs/535/154/png-transparent-badge-badge-with-wings-green-logo-shield-badges-and-labels.png"]
    //var imageArrayC = [UIImage(named:"team1"), UIImage(named:"team2"), UIImage(named:"team3"), UIImage(named:"team4"), UIImage(named:"team5"), UIImage(named:"team1"), UIImage(named:"team2"), UIImage(named:"team3")]
    var imageArrayC = ["https://m.media-amazon.com/images/M/MV5BNzU2YTY2OTgtZGZjZi00MTAyLThlYjUtMWM5ZmYzOGEyOWJhXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg","https://i.kym-cdn.com/photos/images/newsfeed/001/258/706/739.jpg","https://yt3.ggpht.com/1v-BhXzff57VaNA2WgNunxh1ssF3y4PE4bvjEVRaC4qIx-xuRW23dWBuI0sbCt0HeYJEh_EsGSc=s88-c-k-c0x00ffffff-no-rj", "https://yt3.ggpht.com/ytc/AMLnZu9cuk45yBHSCsbzQzheKZ5YPWUOFD6xO9EH2_aGow=s88-c-k-c0x00ffffff-no-rj"]

    
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    @IBOutlet weak var collectionViewC: UICollectionView!
    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet var achievementLabel: UILabel!
    @IBOutlet var teamLabel: UILabel!
    
    @IBOutlet var numAchievemtn: UILabel!
    @IBOutlet var numberofTeams: UILabel!

    
    //let length = imageArrayC.count
    /*
    let numAchievements = "(7)"
    var numTeams = "(4)"*/
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
        collectionViewC.delegate = self
        collectionViewC.dataSource = self
        //button down color
        
        //bigView.backgroundColor = UIColor.black
        //display
        yellowButton.layer.borderColor = CGColor.init(red: 255, green: 255, blue: 255, alpha: 1.0)
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.black.cgColor, UIColor.darkGray.cgColor]

        bigView.layer.insertSublayer(gradient, at: 0)
        //regist
        //yellowButton.layer.borderColor = UIColor.blue.cgColor
        
        self.numAchievemtn.text = "(\(imageArrayB.count))"
        self.numberofTeams.text = "(\(imageArrayC.count))"
        

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         if collectionView == self.collectionViewA {
           return imageArrayA.count
         } else if collectionView == self.collectionViewB {
           return imageArrayB.count
         } else {
             return imageArrayC.count
         }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewA {
            //let data = data[indexPath.row]
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            //cellA.imageA.image = imageArrayA[indexPath.row]
            cellA.imageA.kf.indicatorType = .activity
            cellA.imageA.kf.setImage(with: URL(string: imageArrayA[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            //cellA.
            return cellA
        } else if collectionView == self.collectionViewB {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cellB.imageB.kf.indicatorType = .activity
            cellB.imageB.kf.setImage(with: URL(string: imageArrayB[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            //cellB.imageB.image = imageArrayB[indexPath.row]
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            //cellC.imageC.image = imageArrayC[indexPath.row]
            cellC.imageC.kf.indicatorType = .activity
            cellC.imageC.kf.setImage(with: URL(string: imageArrayC[indexPath.row]), placeholder: nil, options: [.transition(.fade(0.7))], progressBlock: nil)
            return cellC
        }
    }
    
}
/*
class RankingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var collectionViewOne: UICollectionView!
    @IBOutlet var collectionViewTwo: UICollectionView!
    var myArray: [UILabel] = labels.labelsArray()
    var myArray2: [UILabel] = labels.labelsArray()
    
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
     collectionViewOne.delegate = self
     collectionViewOne.dataSource = self
    collectionViewOne.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RankingCollectionViewCell.identifier)
     //view.addSubview(collectionViewOne)
    
     collectionViewTwo.delegate = self
     collectionViewTwo.dataSource = self
     collectionViewTwo.register(UICollectionViewCell.self, forCellWithReuseIdentifier: RankingCollectionViewCell2.identifier)
     //view.addSubview(collectionViewTwo)
}
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     if collectionView == self.collectionViewOne {
       return myArray.count
     } else {
       return myArray2.count
     }
}
    
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let data = data[indexPath.row]
         if collectionView == self.collectionViewOne {
             //let data = data[indexPath.row]
             let RankingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell.identifier, for: indexPath) as! RankingCollectionViewCell
             //cell.data = self.data[indexPath.row]
             //cell.configure(with: UIImage(named: "background")!)
             RankingCollectionViewCell.imageView.image = UIImage(named: data.backgroundImage)
             return RankingCollectionViewCell
             
         } else {
             //let data = data[indexPath.row]
             let RankingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell.identifier, for: indexPath) as! RankingCollectionViewCell
             //cell.data = self.data[indexPath.row]
             //cell.configure(with: UIImage(named: "background")!)
             RankingCollectionViewCell.imageView.image = UIImage(named: data.backgroundImage)
             return RankingCollectionViewCell
             /*
             let RankingCollectionViewCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell2.identifier, for: indexPath)  as! RankingCollectionViewCell2
             //cell.data = self.data[indexPath.row]
             //cell.configure(with: UIImage(named: "background")!)
             RankingCollectionViewCell2.imageView.image = UIImage(named: data.backgroundImage)
             return RankingCollectionViewCell2
              */
         }
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

class RankingCollectionViewCell2: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!

    static let identifier = "RankingCollectionViewCell2"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    static func nib() -> UINib{
        return UINib(nibName: "RankingCollectionViewCell2", bundle: nil)
    }
    
    
}
*/
