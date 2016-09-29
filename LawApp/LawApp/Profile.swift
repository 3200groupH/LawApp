//
//  Profile.swift
//  LawApp
//
//  Created by vm on 13/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class Profile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    @IBAction func ToHome(sender: AnyObject) {
        performSegueWithIdentifier("ProfileToHome", sender: self)
    }
    
}
