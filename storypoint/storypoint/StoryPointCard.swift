//
//  Card.swift
//  storypoint
//
//  Created by Aliya Hassam on 2017-05-21.
//  Copyright © 2017 Aliya Hassam. All rights reserved.
//

import UIKit

class StoryPointCard : NSObject {
    
    var title: String = ""
    var backgroundColour: UIColor = .clear
    var foregroundColour: UIColor = .white
    
    init(title: String?, background: UIColor?, foreground: UIColor?) {
        if let title = title {
            self.title = title
        }
        
        if let backgroundColour = background {
            self.backgroundColour = backgroundColour
        }
        
        if let foregroundColour = foreground {
            self.foregroundColour = foregroundColour
        }
    }
}
