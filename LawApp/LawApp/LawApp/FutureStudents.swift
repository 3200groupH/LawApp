//
//  FutureStudents.swift
//  LawApp
//
//  Created by vm on 26/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class FutureStudents: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ToHome(_ sender: UIButton) {
        performSegue(withIdentifier: "FutureToHome", sender: self)
    }


}
