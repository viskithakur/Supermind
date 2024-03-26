//
//  TitleTblViewCell.swift
//  supermind
//
//  Created by Vishal Thakur on 24/03/24.
//

import UIKit

class TitleTblViewCell: UITableViewCell {

    
    @IBOutlet weak var lbl_Title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
