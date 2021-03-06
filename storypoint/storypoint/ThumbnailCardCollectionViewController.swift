//
//  ThumbnailCardCollectionViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class ThumbnailCardCollectionViewController : CardsViewController, CardCollectionViewProtocol {
    
    init() {
        let layout = UICollectionViewFlowLayout()

        super.init(collectionViewLayout: layout)
        
        customCellIdentifier = "thumbnailCell"

        layout.itemSize = getCardSize()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        title = "Pick a card, any card!"
        
        useLayoutToLayoutNavigationTransitions = false
        
        items = [StoryPointCard(title: "0", background: .magenta, foreground: .white),
                 StoryPointCard(title: "1", background: .blue, foreground: .white),
                 StoryPointCard(title: "2", background: .gray, foreground: .white),
                 StoryPointCard(title: "3", background: .orange, foreground: .white),
                 StoryPointCard(title: "5", background: .purple, foreground: .white),
                 StoryPointCard(title: "8", background: .magenta, foreground: .white),
                 StoryPointCard(title: "13", background: .blue, foreground: .white),
                 StoryPointCard(title: "20", background: .gray, foreground: .white),
                 StoryPointCard(title: "40", background: .orange, foreground: .white),
                 StoryPointCard(title: "100", background: .purple, foreground: .white),
                 StoryPointCard(title: "?", background: .magenta, foreground: .white)]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let fullScreenVC = HiddenFullScreenCollectionViewController()
        
        let item = items[indexPath.item]
        
        let selectedItem = SelectedStoryPointCard(title: item.title, background: item.backgroundColour, foreground: item.foregroundColour)
        
        fullScreenVC.items = [selectedItem]
        
        navigationController?.pushViewController(fullScreenVC, animated: true)
    }
    
    // MARK: - StoryPointCardProtocol
    
    func getCardSize() -> CGSize {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        
        let cellWidth = (screenWidth / 3.0) - 15
        let cellHeight = cellWidth * 1.25
        
        let size = CGSize(width: cellWidth, height: cellHeight)
        
        return size
    }
}
