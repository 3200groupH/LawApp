//
//  CurrentStudents.swift
//  LawApp
//
//  Created by vm on 13/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class CurrentStudents: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    @IBAction func StartQuiz1(sender: UIButton) {
        performSegueWithIdentifier("StartCurrentQuiz1", sender: self)
    }
    
    @IBAction func ToHome(sender: UIButton) {
        performSegueWithIdentifier("CurrentToHome", sender: self)
    }
   
}
