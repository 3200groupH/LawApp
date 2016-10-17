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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        switch segue.identifier! {
            case "pathways":
                let dest = segue.destination as! webviewController
                dest.urlString = "http://www.law.uwa.edu.au/students/legal-qualifying-degree/manage_enrolment"
            case "lsat":
                let dest = segue.destination as! webviewController
                dest.urlString = "http://www.law.uwa.edu.au/courses/juris-doctor-jd/about-the-lsat"
            case "info":
                let dest = segue.destination as! webviewController
                dest.urlString = "http://www.law.uwa.edu.au/students/registration-information-session"
            case "blackstone":
                let dest = segue.destination as! webviewController
                dest.urlString = "http://www.blackstone.asn.au"
            case "apply":
                let dest = segue.destination as! webviewController
                dest.urlString = "http://www.law.uwa.edu.au/courses/juris-doctor-jd/how-to-apply-for-the-juris-doctor/"
        default:
            return
        }
    }

}
