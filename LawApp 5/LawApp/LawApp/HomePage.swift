//
//  HomePage.swift
//  LawApp
//
//  Created by Bryn Roughan on 12/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class HomePage: UIViewController, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func HomeToFuture(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeToFuture", sender: self)
    }
    
    @IBAction func ToCurrent(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeToCurrent", sender: self)
    }
    
    @IBAction func ToExiting(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeToExiting", sender: self)
    }
    
    @IBAction func ToProfile(_ sender: AnyObject) {
        performSegue(withIdentifier: "HomeToProfile", sender: self)
    }
    
}
