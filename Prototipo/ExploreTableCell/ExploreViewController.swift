//
//  ExploreViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 31/03/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
//Quantas células desejo criar:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
//Criando
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "ExploreTableViewCell", for: indexPath)
        
        return cell
    }
    
//Altura entre células
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 420
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
           
            cell.pagina1.image = UIImage(named: "pagina1")
           //cell.pagina1.text = "Consentimento"
           return cell
       }
       
       func collectionView (_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
           return CGSize(width: 200, height: 200)
       }
       
       
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
        }
    

}
