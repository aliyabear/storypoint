//
//  StoryPointCardsViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-18.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class StoryPointCardsViewController: UICollectionViewController {
    
    let customCellIdentifier = "justAString"
    // TODO: Make these values configurable via app.
    var items = ["0", "1", "2", "3", "5", "8", "13", "20", "need coffee!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(StoryPointCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath as IndexPath) as! StoryPointCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.titleLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.lightGray // make cell more visible in our example project
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }}

// TODO: Move this into its own file
class StoryPointCell : UICollectionViewCell {
    var titleLabel: UILabel = {
        // TODO figure out actual width of cell
        let label = UILabel(frame: CGRect(x:0, y: 0, width: 40 , height: 40))
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.backgroundColor = .orange
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
