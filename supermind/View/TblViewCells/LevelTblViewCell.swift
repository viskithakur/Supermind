//
//  LevelTblViewCell.swift
//  supermind
//
//  Created by Vishal Thakur on 24/03/24.
//

import UIKit

class LevelTblViewCell: UITableViewCell {

    @IBOutlet weak var lbl_title: UILabel!
    
    @IBOutlet weak var btn_Explore: UIButton!
    
    
    @IBOutlet weak var img_bg: UIImageView!
    
    
    @IBOutlet weak var stk_btn: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .clear
        
        setupCell()
    }

    func setupCell(){
        lbl_title.text = "Your Level premium is about to expire ,renew now!"
        lbl_title.numberOfLines = 2
        
        img_bg.layer.cornerRadius = 5
        img_bg.layer.borderWidth = 2
        img_bg.layer.borderColor = UIColor.white.cgColor
        
        stk_btn.layer.cornerRadius = 5
        stk_btn.layer.borderWidth = 2
        stk_btn.layer.borderColor = UIColor.white.cgColor
       
     
    }
    
}
