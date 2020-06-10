//
//  MyCollectionViewCell.swift
//  collectionViewCellTest
//
//  Created by Yuki Shinohara on 2020/06/08.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLable: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell",
                     bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Model){
        self.myLable.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFill
    }
}
