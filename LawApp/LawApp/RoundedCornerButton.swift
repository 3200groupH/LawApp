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
        layer.cornerRadius = 4
        backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 0.9)
            self.setTitleColor(UIColor.black, for: .normal)
          }
    
}
