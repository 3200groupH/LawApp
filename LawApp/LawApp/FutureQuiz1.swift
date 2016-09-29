//
//  FutureQuiz1.swift
//  LawApp
//
//  Created by vm on 26/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class FutureQuiz1: UIViewController, UITextFieldDelegate {

    //MARK: Variables
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var TextQuestion: UIStackView!
    @IBOutlet weak var DefaultStack: UIStackView!
    @IBOutlet weak var Question5Stack: UIStackView!
    var currentQuestion = 0
    var answers = Array<String>(count: 6, repeatedValue: "")
    
    //MARK: Defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.delegate = self
        currentQuestion = 0
        Question5Stack.hidden = true
        doQuestions()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if(textField.text != ""){
            NextButton.hidden = false
        }
    }
    
    
    //MARK: Actions
    
    
    func doQuestions(){
        NextButton.hidden = true
        switch(currentQuestion){
        case 0:
            QuestionLabel.text = "1. What's Your Favourite Colour?"
            NextButton.setTitle("Next", forState:UIControlState.Normal)
            break
        case 1:
            QuestionLabel.text = "2. What's Your Favourite TV Show?"
            NextButton.setTitle("Next", forState:UIControlState.Normal)
            break
        case 2:
            QuestionLabel.text = "3. I'm a Little Obsessed With ..."
            NextButton.setTitle("Next", forState:UIControlState.Normal)
            break
        case 3:
            QuestionLabel.text = "4. Do You Know What Lawyers Do?"
            NextButton.setTitle("Next", forState:UIControlState.Normal)
            break
        case 4:
            DefaultStack.hidden = true
            Question5Stack.hidden = false
            
            break
        case 5:
            QuestionLabel.text = "6. If I Didn't do Law, I Would ..."
            NextButton.setTitle("Finish", forState:UIControlState.Normal)
            break
            
            
        default: break
        }
    }
    
    @IBAction func NextButtonPush(sender: UIButton) {
        if(currentQuestion != 4){
            answers[currentQuestion] = TextField.text!
        }
        TextField.text = ""
        if(currentQuestion < 5){
            currentQuestion+=1
            doQuestions()
        }
        if(currentQuestion == 5){
            for i in 0...5 {
                NSLog(String(answers[i]))
            }
            performSegueWithIdentifier("EndOfFutureQuiz", sender: self)
        }
        
    }

    @IBAction func DayMonday(sender: UIButton) {
        answers[4] = "Monday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }
    
    @IBAction func DayTuesday(sender: UIButton) {
        answers[4] = "Tuesday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }

    @IBAction func DayWednesday(sender: UIButton) {
        answers[4] = "Wednesday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()    }

    @IBAction func DayThursday(sender: UIButton) {
        answers[4] = "Thursday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }
    
    @IBAction func DayFriday(sender: UIButton) {
        answers[4] = "Friday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }
    
    @IBAction func DaySaturday(sender: UIButton) {
        answers[4] = "Saturday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }

    @IBAction func DaySunday(sender: UIButton) {
        answers[4] = "Sunday"
        currentQuestion+=1
        Question5Stack.hidden = true
        DefaultStack.hidden = false
        doQuestions()
    }

    @IBAction func HomeButton(sender: UIButton) {
        performSegueWithIdentifier("FutureQuizToHome", sender: self)
    }
    
}
