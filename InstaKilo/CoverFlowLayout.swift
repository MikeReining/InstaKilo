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
    }
    
    override func collectionViewContentSize() -> CGSize {
        var size = self.collectionView!.frame.size
        return size
    }
    
    
    
//    override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject] {
////        var attributes = [NSMutableArray]()
////        
////        for (var i = 0; i<cellCount!; i++) {
////            var indexPath : NSIndexPath = NSIndexPath(forItem: i, inSection: 0)
////            attributes.append(self.layoutAttributesForItemAtIndexPath(indexPath))
////        }
//    return attributes
//    }
    
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes! {
        var attributes : UICollectionViewLayoutAttributes = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
        attributes.size = CGSizeMake(70, 70)
        attributes.center = CGPointMake(0,0)
        return attributes
    }
    
}
