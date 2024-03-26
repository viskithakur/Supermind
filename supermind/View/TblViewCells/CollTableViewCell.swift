//
//  CollTableViewCell.swift
//  supermind
//
//  Created by Vishal Thakur on 24/03/24.
//

import UIKit

class CollTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbl_Title: UILabel!
    
    
    @IBOutlet weak var collView_Content: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        SetupCell()
    }
    
    private func SetupCell(){
        collView_Content.dataSource = self
        collView_Content.delegate = self
        
        let nib = UINib(nibName: "ContentCollViewCell", bundle: nil)
      collView_Content.register(nib , forCellWithReuseIdentifier:"ContentCollViewCell")
    }
}

extension CollTableViewCell : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollViewCell", for: indexPath) as! ContentCollViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 180)
    }

}
