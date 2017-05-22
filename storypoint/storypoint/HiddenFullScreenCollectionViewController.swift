//
//  HiddenFullScreenCollectionViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class HiddenFullScreenCollectionViewController : FullScreenCollectionViewController {
    
    // MARK: - UICollectionViewDelegate protocol
    
    // make a cell for each cell index path
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath as IndexPath) as! StoryPointCollectionViewCell
        
        let item = items[indexPath.item];
        
        CollectionViewCellThemeHelper.setThemeForHiddenCard(cell: cell, item: item as? SelectedStoryPointCard)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let fullScreenVC = FullScreenCollectionViewController()
         
        let item = items[indexPath.item]
        
        fullScreenVC.items = [item]
        
        navigationController?.pushViewController(fullScreenVC, animated: true)
    }
}
