//
//  CurrentQuiz2.swift
//  LawApp
//
//  Created by vm on 28/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class CurrentQuiz2: UIViewController {
    //MARK: Variables

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var WarningLabel: UILabel!
    
    var currentQuestion = 0
    var selection = -1
    
    
    //MARK: Defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        clearRadios()
        currentQuestion = 0
        WarningLabel.hidden = true
        doQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: Actions
    func clearRadios(){
        Button1.backgroundColor = UIColor.grayColor()
        Button2.backgroundColor = UIColor.grayColor()
        Button3.backgroundColor = UIColor.grayColor()
        Button4.backgroundColor = UIColor.grayColor()
        Button5.backgroundColor = UIColor.grayColor()
        selection = -1
     }
    
    func doQuestions(){
        NSLog(String(currentQuestion))
        clearRadios()
        switch currentQuestion{
        case 0:
            QuestionLabel.text = "Save the Planet"
            break
        case 1:
            QuestionLabel.text = "Fight Crime"
            break
        case 2:
            QuestionLabel.text = "Help Others"
            break
        case 3:
            QuestionLabel.text = "Teach Others"
            break
        case 4:
            QuestionLabel.text = "Work in a Big Company"
            break
        case 5:
            QuestionLabel.text = "Negotiate Deals"
            break
        case 6:
            QuestionLabel.text = "Appear in Court"
            NextButton.setTitle("Finish", forState: UIControlState.Normal)
            break
            
        default:
            break
        }
    }
    
    @IBAction func Radio1(sender: UIButton) {
        clearRadios()
        Button1.backgroundColor = UIColor.cyanColor()
        selection = 1
    }
    
    @IBAction func Radio2(sender: UIButton) {
        clearRadios()
        Button2.backgroundColor = UIColor.cyanColor()
        selection = 2
    }
    
    @IBAction func Radio3(sender: UIButton) {
        clearRadios()
        Button3.backgroundColor = UIColor.cyanColor()
        selection = 3
    }
    
    @IBAction func Radio4(sender: UIButton) {
        clearRadios()
        Button4.backgroundColor = UIColor.cyanColor()
        selection = 4
    }
    
    @IBAction func Radio5(sender: UIButton) {
        clearRadios()
        Button5.backgroundColor = UIColor.cyanColor()
        selection = 5
    }
    
    @IBAction func NextPress(sender: UIButton) {
        WarningLabel.hidden = true
        if(selection == -1){
            WarningLabel.hidden = false
            return
        }
        NSLog(String(currentQuestion))
        if(currentQuestion < 6){
            currentQuestion+=1
            doQuestions()
        }else if(currentQuestion == 6){
            performSegueWithIdentifier("EndCurrentQuiz", sender: self)
        }
    }
    
    
}
