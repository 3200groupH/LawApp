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

    @IBAction func StartQuiz1(_ sender: UIButton) {
        performSegue(withIdentifier: "StartCurrentQuiz1", sender: self)
    }
    
    @IBAction func ToHome(_ sender: UIButton) {
        performSegue(withIdentifier: "CurrentToHome", sender: self)
    }
   
}
