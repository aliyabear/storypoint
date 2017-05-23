//
//  CollectionViewCellThemeHelper.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class CollectionViewCellThemeHelper {
    
    // Sets the theme of a StoryPointCollectionViewCell
    static func setTheme(cell: StoryPointCollectionViewCell?, item: StoryPointCardProtocol?) {
        guard let cell = cell else {
            return
        }
        
        guard let item = item else {
            return
        }
        
        setBasicTheme(cell: cell, item: item)
    }
    
    static func setThemeForHiddenCard(cell: StoryPointCollectionViewCell?, item: SelectedStoryPointCard?) {
        guard let cell = cell else {
            return
        }
        
        if let image = UIImage.randomPony() {
            let imageView = UIImageView(frame: CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width: cell.frame.width, height: cell.frame.height)))
        
            imageView.image = image
            imageView.contentMode = UIViewContentMode.scaleAspectFit
            cell.addSubview(imageView);
        }
    }
    
    private static func setBasicTheme(cell: StoryPointCollectionViewCell, item: StoryPointCardProtocol) {
        cell.titleLabel.frame.size = CGSize(width: cell.frame.width, height: cell.frame.height)
        cell.titleLabel.text = item.title
        cell.titleLabel.textColor = item.foregroundColour
        cell.backgroundColor = item.backgroundColour
        cell.layer.cornerRadius = 3
        
        if(item is SelectedStoryPointCard) {
            cell.titleLabel.font =  UIFont.systemFont(ofSize: (item as! SelectedStoryPointCard).fontSize)
        }
    }
}

extension UIImage {
    static func randomPony() -> UIImage? {
        let ponies = ["apple.jpg", "pinkie.jpg", "pinkie2.png", "rarity.png", "rarity.jpg", "applejack.png", "dash.png", "dash2.png", "dash3.png", "maud.png", "scootaloo.png", "twilight.png", "twilight2.png"]
        
        let index = Int(arc4random_uniform(UInt32(ponies.count)))
    
        return UIImage(named: ponies[index])
    }
}
