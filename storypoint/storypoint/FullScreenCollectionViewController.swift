//
//  FullScreenCollectionViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class FullScreenCollectionViewController : CardsViewController, CardCollectionViewProtocol {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        
        super.init(collectionViewLayout: layout)
        
        customCellIdentifier = "fullScreenCell"
        layout.itemSize = getCardSize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - StoryPointCardProtocol
    
    func getCardSize() -> CGSize {
        let screen = UIScreen.main.bounds
        let size = CGSize(width: screen.size.width, height: screen.size.height - 40)
        
        return size
    }
    
    func setTheme(cell: StoryPointCollectionViewCell?, item: StoryPointCardProtocol?) {
        CollectionViewCellThemeHelper.setThemeForHiddenCard(cell: cell, item: item as? SelectedStoryPointCard)
    }
}
