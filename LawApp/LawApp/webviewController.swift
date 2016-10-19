//
//  webviewController.swift
//  LawApp
//
//  Created by slava on 17/10/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class webviewController : UIViewController {
    

    @IBOutlet weak var webview: UIWebView!
    var urlString: String = ""
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        webview?.loadRequest(request)
    }
    
    @IBAction func goBack(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
