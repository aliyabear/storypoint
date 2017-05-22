//
//  FullScreenCollectionViewController.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class FullScreenCollectionViewController : CardsViewController, CardProtocol {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        
        super.init(collectionViewLayout: layout)
        
        customCellIdentifier = "fullScreenCell"
        layout.itemSize = getCardSize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let fullScreenVC = FullScreenCollectionViewController()
        
        let item = items[indexPath.item]
