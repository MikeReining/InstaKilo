//
//  CollectionHeaderView.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class CollectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var headerLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        println("headerLabel.frame: \(headerLabel.frame)")
        
        println("headerLabel.superview: \(headerLabel.superview)")
        
        println("headerLabel.superview?.backgroundColor: \(headerLabel.superview?.backgroundColor)")
        
        println("self.frame: \(self.frame)")
        
        println("self.superview: \(self.superview)")
        
        println("self.superview?.backgroundColor: \(self.superview?.backgroundColor)")
        
        
    }
}
