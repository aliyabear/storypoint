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
    static func setTheme(cell: StoryPointCollectionViewCell?, item: StoryPointCard?) {
        guard let cell = cell else {
            return
        }
        
        guard let item = item else {
            return
        }
        
        cell.titleLabel.frame.size = CGSize(width: cell.frame.width, height: cell.frame.height)
        cell.titleLabel.text = item.title
        cell.titleLabel.textColor = item.foregroundColour
        cell.backgroundColor = item.backgroundColour
        cell.layer.cornerRadius = 3
        
        if(item is SelectedStoryPointCard) {
            cell.titleLabel.font =  UIFont.systemFont(ofSize: (item as! SelectedStoryPointCard).fontSize)
            //cell.titleLabel.isHidden = true;
        }
    }
    
}
