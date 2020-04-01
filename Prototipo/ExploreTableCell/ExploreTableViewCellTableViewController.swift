//
//  ExploreTableViewCellTableViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 31/03/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class ExploreTableViewCell: UITableViewCell {
 
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // collectionView.delegate = self
       // collectionView.dataSource = self
        //collectionView.reloadData()
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

extension ExploreTableViewCell {
    
    func setCollectionViewDataSourceDelegate <D: UICollectionViewDataSource & UICollectionViewDelegate>(_dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = _dataSourceDelegate
        collectionView.dataSource = _dataSourceDelegate
        
    }
    
    
    
}


