//
//  DemoViewController.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    @IBAction func layoutSegmentChanged(sender: UISegmentedControl) {
//        let cvc = CollectionViewController()
//        let layout = CollectionViewSmallFlowLayout()
//        cvc.smallLayout .invalidateLayout()
//        cvc.collectionView?.setCollectionViewLayout(layout, animated: true)
        let alert = UIAlertController(title: "Bummer!", message: "Switching between BIG and SMALL layouts only works if you change the custom class for the Collection View in the storyboard.", preferredStyle: .Alert)
        let action = UIAlertAction(title: "Please help", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    



}
