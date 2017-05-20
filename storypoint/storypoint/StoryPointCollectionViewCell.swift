//
//  StoryPointCollectionViewCell.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-20.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class StoryPointCollectionViewCell : UICollectionViewCell {
    
    var titleLabel: UILabel = {
        // TODO figure out actual width of cell
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.layoutMargins = UIEdgeInsets(top:4, left:4, bottom:4, right:4)
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
