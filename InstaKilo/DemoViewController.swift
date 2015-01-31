//
//  DemoViewController.swift
//  InstaKilo
//
//  Created by Michael Reining on 1/29/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    @IBOutlet weak var containerOutlet: UIView!
    
    var collectionViewController:UICollectionViewController?
    var someCollectionView:UICollectionView?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println(storyboard)
        println(segue.identifier)
        println(segue.destinationViewController)
        if segue.identifier == "containingCVCSegue" {
            
            collectionViewController = segue.destinationViewController as? UICollectionViewController
        }
    }
    
    @IBAction func layoutSegmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            let smallLayout = CollectionViewSmallFlowLayout()
            collectionViewController?.collectionView?.setCollectionViewLayout(smallLayout, animated: true)
            collectionViewController?.collectionView?.reloadData()
        case 1:
            let bigLayout = CollectionViewBigFlowLayout()
            collectionViewController?.collectionView?.setCollectionViewLayout(bigLayout, animated: true)
            collectionViewController?.collectionView?.reloadData()
        default:
            println("uh oh not supposed to happen!")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    



}
