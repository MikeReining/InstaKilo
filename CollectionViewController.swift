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
        println("\(self.view.frame)")
        
    }
    
    override func viewDidLayoutSubviews() {
        println("\(self.view.frame)")
        
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
        let imageString = bit.name + "_256.jpg"
        let image = UIImage(named: imageString)
        cell.bitImage.image = image
        
        return cell
    }
    
    // configure Header View
    
    override func collectionView(collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            //1
            switch kind {
                //2
            case UICollectionElementKindSectionHeader:
                //3
                let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                    withReuseIdentifier: "CollectionHeaderView",
                    forIndexPath: indexPath)
                    as CollectionHeaderView
                if indexPath.section == 0 {
                    headerView.headerLabel.text = "Animal Kingdom"
                } else {
                    headerView.headerLabel.text = "Famous Places"
                }
                return headerView
            default:
                //4
                assert(false, "Unexpected element kind")
            }
    }
    
    
    
}

