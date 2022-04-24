//
//  musicCollectionViewCell.swift
//  music
//
//  Created by 黃子瑜 on 2022/4/24.
//

import UIKit

class musicCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "\(musicCollectionViewCell.self)"
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var musicLabel: UILabel!
    
}
