//
//  CollectionViewSmallFlowLayout.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CollectionViewSmallFlowLayout: UICollectionViewFlowLayout {

// MARK: - Init
        
        required init(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            self.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            self.itemSize = CGSizeMake(40, 40)
            self.minimumLineSpacing = 0
            self.minimumInteritemSpacing = 0
        }
}