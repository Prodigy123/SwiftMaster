//
//  ViewController.swift
//  Viewer
//
//  Created by 吉安 on 09/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController,UICollectionViewDataSource
{

    @IBOutlet weak var collectionView: UICollectionView!
   
    var cellInfos:[cellInfo]?{
        didSet{
        collectionView.reloadData()
        print("2")}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        cellInfos = cellInfo.getInfo()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        print("i am here 2")
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellInfos?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "singleCell", for: indexPath)
        if let infoForSingleCell = cellInfos?[indexPath.item]
        {
            if let thisCell = cell as? singleCollectionViewCell{
                thisCell.cellContext.text = infoForSingleCell.text
                thisCell.cellImage.image = UIImage(named: infoForSingleCell.imageName!)
            }
        }
        return cell
    }

}

