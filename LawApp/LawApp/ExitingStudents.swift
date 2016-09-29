//
//  ExitingStudents.swift
//  LawApp
//
//  Created by vm on 13/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class ExitingStudents: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    @IBAction func ToHome(sender: UIButton) {
        performSegueWithIdentifier("ExitingToHome", sender: self)
    }

}
