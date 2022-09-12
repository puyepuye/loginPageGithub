import UIKit

struct Celldata {
    let title: String
    let backgroundImage: String
}
class RankingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var imageArrayA = [UIImage(named:"game1"), UIImage(named:"game2"), UIImage(named:"game3"), UIImage(named:"game1"), UIImage(named:"game2"), UIImage(named:"game3")]
    var imageArrayB = [UIImage(named:"achievement1"), UIImage(named:"achievement2"), UIImage(named:"achievement1"),UIImage(named:"achievement2")]
    var imageArrayC = [UIImage(named:"team1"), UIImage(named:"team2"), UIImage(named:"team3"), UIImage(named:"team4"), UIImage(named:"team5"), UIImage(named:"team1"), UIImage(named:"team2"), UIImage(named:"team3")]
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    @IBOutlet weak var collectionViewC: UICollectionView!
    @IBOutlet weak var bigView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
        collectionViewC.delegate = self
        collectionViewC.dataSource = self
        
        //bigView.backgroundColor = UIColor.black
        //display
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.black.cgColor, UIColor.darkGray.cgColor]

        bigView.layer.insertSublayer(gradient, at: 0)
        //regist
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
            cellA.imageA.image = imageArrayA[indexPath.row]
            //cellA.
            return cellA
        } else if collectionView == self.collectionViewB {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cellB.imageB.image = imageArrayB[indexPath.row]
            return cellB
        } else {
            let cellC = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            cellC.imageC.image = imageArrayC[indexPath.row]
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
