//
//  CollectionViewController.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var bitArrays = [
        BitLoader.initialBitArrayLoader("AnimalKingdom"),
        BitLoader.initialBitArrayLoader("FamousPlaces"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return bitArrays.count
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bitArrays[section].count
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCell", forIndexPath: indexPath) as PhotoCell
        
        let section = bitArrays[indexPath.section]
        
        let bit = section[indexPath.row]
        let imageString = "AnimalKingdom/" + bit.name + "_256.jpg"
        let image = UIImage(named: imageString)
        cell.bitImage.image = image
        
        return cell
    }
    
}

