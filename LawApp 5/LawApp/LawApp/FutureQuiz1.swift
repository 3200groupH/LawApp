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
    var answers = Array<String>(repeating: "", count: 6)
    
    //MARK: Defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.delegate = self
        currentQuestion = 0
        Question5Stack.isHidden = true
        doQuestions()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide Keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if(textField.text != ""){
            NextButton.isHidden = false
        }
    }
    
    
    //MARK: Actions
    
    
    func doQuestions(){
        NextButton.isHidden = true
        switch(currentQuestion){
        case 0:
            QuestionLabel.text = "1. What's Your Favourite Colour?"
            NextButton.setTitle("Next", for:UIControlState())
            break
        case 1:
            QuestionLabel.text = "2. What's Your Favourite TV Show?"
            NextButton.setTitle("Next", for:UIControlState())
            break
        case 2:
            QuestionLabel.text = "3. I'm a Little Obsessed With ..."
            NextButton.setTitle("Next", for:UIControlState())
            break
        case 3:
            QuestionLabel.text = "4. Do You Know What Lawyers Do?"
            NextButton.setTitle("Next", for:UIControlState())
            break
        case 4:
            DefaultStack.isHidden = true
            Question5Stack.isHidden = false
            
            break
        case 5:
            QuestionLabel.text = "6. If I Didn't do Law, I Would ..."
            NextButton.setTitle("Finish", for:UIControlState())
            break
            
            
        default: break
        }
    }
    
    @IBAction func NextButtonPush(_ sender: UIButton) {
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
            performSegue(withIdentifier: "EndOfFutureQuiz", sender: self)
        }
        
    }

    @IBAction func DayMonday(_ sender: UIButton) {
        answers[4] = "Monday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }
    
    @IBAction func DayTuesday(_ sender: UIButton) {
        answers[4] = "Tuesday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }

    @IBAction func DayWednesday(_ sender: UIButton) {
        answers[4] = "Wednesday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()    }

    @IBAction func DayThursday(_ sender: UIButton) {
        answers[4] = "Thursday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }
    
    @IBAction func DayFriday(_ sender: UIButton) {
        answers[4] = "Friday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }
    
    @IBAction func DaySaturday(_ sender: UIButton) {
        answers[4] = "Saturday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }

    @IBAction func DaySunday(_ sender: UIButton) {
        answers[4] = "Sunday"
        currentQuestion+=1
        Question5Stack.isHidden = true
        DefaultStack.isHidden = false
        doQuestions()
    }

    @IBAction func HomeButton(_ sender: UIButton) {
        performSegue(withIdentifier: "FutureQuizToHome", sender: self)
    }
    
}
