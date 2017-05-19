//
//  StoryPointCardsViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-18.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class StoryPointCardsViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let collectionView = collectionView {
            collectionView.backgroundColor = UIColor.white
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

