//
//  StoryPointCardsViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-18.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class StoryPointCardsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let customCellIdentifier = "justAString"
    // TODO: Make these values configurable via app.
    var items = ["0", "1", "2", "3", "5", "8", "13", "20", "?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(StoryPointCollectionViewCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath as IndexPath) as! StoryPointCollectionViewCell
        
        setThemeForCell(cell: cell, indexPath: indexPath)
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout protocol
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:10, left:10, bottom:10, right:10)
    }
    
    // let's us set the actual size of the UICollectionViewCells within our UICollectionView
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return getCellSize()
    }
    
    // MARK: - Cell Customization
    
    private func getCellSize() -> CGSize {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        
        let cellWidth = (screenWidth / 3.0) - 15;
        let size = CGSize(width: cellWidth, height: cellWidth)
        
        return size
    }
    
    private func setThemeForCell(cell: StoryPointCollectionViewCell?, indexPath: IndexPath) {
        guard let cell = cell else {
            return
        }
        
        cell.titleLabel.text = self.items[indexPath.item]
        cell.titleLabel.font = cell.titleLabel.font.withSize(24)
        cell.titleLabel.frame.size = getCellSize()
        cell.layer.cornerRadius = 4
        cell.backgroundColor = .orange
    }

}
