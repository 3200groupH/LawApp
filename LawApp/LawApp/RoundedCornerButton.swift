//
//  RoundedCornerButton.swift
//  LawApp
//
//  Created by vm on 16/10/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class RoundedCornerButton: UIButton {
    override func awakeFromNib() {
        
        layer.cornerRadius = 15
        backgroundColor = UIColor.white
    //    self.setTitleColor = UIColor.darkGray
        self.setTitleColor(UIColor.lightGray, for: .normal)
    }
    
}

