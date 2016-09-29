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
    
    @IBAction func HomeToFuture(sender: UIButton) {
        performSegueWithIdentifier("HomeToFuture", sender: self)
    }
    
    @IBAction func ToCurrent(sender: UIButton) {
        performSegueWithIdentifier("HomeToCurrent", sender: self)
    }
    
    @IBAction func ToExiting(sender: UIButton) {
        performSegueWithIdentifier("HomeToExiting", sender: self)
    }
    
    @IBAction func ToProfile(sender: AnyObject) {
        performSegueWithIdentifier("HomeToProfile", sender: self)
    }
    
}