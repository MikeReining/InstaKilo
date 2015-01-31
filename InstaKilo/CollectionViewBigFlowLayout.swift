//
//  CollectionViewBigFlowLayout.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CollectionViewBigFlowLayout: UICollectionViewFlowLayout {
    
    // MARK: - Init
    override init() {
        super.init()
        self.sectionInset = UIEdgeInsets(top: 0, left: 18, bottom: 20, right: 18)
        self.itemSize = CGSizeMake(160, 160)
        self.minimumLineSpacing = 18
        self.minimumInteritemSpacing = 0
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

    }
}