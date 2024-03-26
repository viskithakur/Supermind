//
//  ContentCollViewCell.swift
//  supermind
//
//  Created by Vishal Thakur on 24/03/24.
//

import UIKit

class ContentCollViewCell: UICollectionViewCell {

    
    @IBOutlet weak var img_bg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        img_bg.layer.cornerRadius = 10
        img_bg.layer.borderWidth = 2
        img_bg.layer.borderColor = UIColor.white.cgColor
    }

}
