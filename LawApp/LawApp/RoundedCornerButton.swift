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
        backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            self.setTitleColor(UIColor.black, for: .normal)
          }
    
}
