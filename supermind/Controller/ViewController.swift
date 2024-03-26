//
//  ViewController.swift
//  supermind
//
//  Created by Vishal Thakur on 24/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var mainTblView: UITableView!
    @IBOutlet weak var img_profile: UIImageView!
    @IBOutlet weak var pro_view: UIView!
    @IBOutlet weak var progress_bar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTblView.backgroundColor = .clear
        tableViewSetup()
        setupInitialUI()
    }
    private func tableViewSetup(){
        mainTblView.dataSource = self
        mainTblView.delegate = self
        
        let nib = UINib(nibName: "CollTableViewCell", bundle: nil)
        mainTblView.register(nib, forCellReuseIdentifier: "CollTableViewCell")
        
        let nib1 = UINib(nibName: "TitleTblViewCell", bundle: nil)
        mainTblView.register(nib1 , forCellReuseIdentifier: "TitleTblViewCell")
        
        let nib2 = UINib(nibName: "LevelTblViewCell", bundle: nil)
        mainTblView.register(nib2 , forCellReuseIdentifier: "LevelTblViewCell")
        
        let nib3 = UINib(nibName: "ContentTblViewCell", bundle: nil)
        mainTblView.register(nib3 , forCellReuseIdentifier: "ContentTblViewCell")
    }
        func setupInitialUI(){
            
            
            img_profile.layer.cornerRadius = 5
            img_profile.layer.borderColor = UIColor.blue.cgColor.copy(alpha: 0.5)
            img_profile.layer.borderWidth = 1
            
            pro_view.layer.cornerRadius = 5
            pro_view.layer.borderColor = UIColor.blue.cgColor
            pro_view.layer.borderWidth = 1
            
            progress_bar.layer.cornerRadius = 5
            progress_bar.layer.borderColor =
            UIColor.blue.cgColor.copy(alpha: 0.5)
            progress_bar.layer.borderWidth = 1
        
   }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 3 {
            return 3
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LevelTblViewCell", for: indexPath) as!
            LevelTblViewCell
           
            return cell
        }
        else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier:"CollTableViewCell", for: indexPath) as!
            CollTableViewCell
            return cell
        }
        else if indexPath.section == 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TitleTblViewCell", for: indexPath) as!
        TitleTblViewCell

            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ContentTblViewCell", for: indexPath) as!
            ContentTblViewCell
            return cell
        }
        
    }
    
    
}
