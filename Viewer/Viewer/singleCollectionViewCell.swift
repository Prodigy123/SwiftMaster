//
//  singleCollectionViewCell.swift
//  Viewer
//
//  Created by 吉安 on 10/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class singleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellContext: UILabel!

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
