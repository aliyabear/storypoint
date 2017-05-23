//
//  StoryPointCardsViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-18.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class CardsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var customCellIdentifier = ""    
    var items = [StoryPointCardProtocol]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(StoryPointCollectionViewCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // make a cell for each cell index path
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath as IndexPath) as! StoryPointCollectionViewCell
        
        let item = items[indexPath.item];
        
        CollectionViewCellThemeHelper.setTheme(cell: cell, item: item)
        
        return cell
    }
    
    // tell the collection view how many cells to make
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    
}
