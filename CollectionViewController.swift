//
//  CollectionViewController.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var bitArray = BitLoader.initialBitArrayLoader("AnimalKingdom")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.frame.size
        
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return bitArray.count
    }
    
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bitArray.count
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCell", forIndexPath: indexPath) as PhotoCell
        
        let bit = bitArray[indexPath.row]
        let imageString = bit.name + "_256.jpg"
        let image = UIImage(named: imageString)
        cell.bitImage.image = image
        
        return cell
    }
    

    
    
    
}

