import UIKit
import AVKit

private let reuseIdentifier = "Cell"

class musicCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCellSize()
    }
    
    func configureCellSize() {
        let itemSpace: Double = 20   //間距
        let columnCount: Double = 2  //每行的數量
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowLayout?.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1)-10*2) / columnCount)
        flowLayout?.itemSize = CGSize(width: width, height: width)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = itemSpace //左右間距
        flowLayout?.minimumLineSpacing = itemSpace // 設定上下間距
    }
    //播放音樂
    @IBSegueAction func show(_ coder: NSCoder) -> AVPlayerViewController? {
        guard let indexPath = collectionView.indexPathsForSelectedItems else { return nil }
        let index = indexPath[0][1]
        let controller = AVPlayerViewController(coder: coder)
        let url = URL(string: princes[index].url)
        let player = AVPlayer(url: url!)
        controller?.player = player
        player.play()
        return controller
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return princes.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: musicCollectionViewCell.reuseIdentifier, for: indexPath) as! musicCollectionViewCell
        let prince = princes[indexPath.item]
        cell.musicImage.image = UIImage(named: prince.image)
        cell.musicLabel.text = prince.name
        return cell
    }
    
}
