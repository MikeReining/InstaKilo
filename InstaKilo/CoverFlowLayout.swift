//
//  CoverFlowLayout.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/30/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CoverFlowLayout: UICollectionViewFlowLayout {
   var cellCount : NSInteger?
    
    override func prepareLayout() {
        super.prepareLayout()
        var size = self.collectionView!.frame.size
        cellCount = self.collectionView?.numberOfItemsInSection(0)
        itemSize = CGSizeMake(275, 275)
        
//        var size : CGSize = self.collectionView.frame.size
//        cellCount = self.collectionView.numberOfItemsInSection(0)
//        center = CGPointMake(size.width/2.0, size.height/2.0)
//        centerX = center!.x
//        centerY = center!.y
//        radius = 300
    }
    
}
