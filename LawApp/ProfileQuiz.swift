//
//  FutureQuiz1.swift
//  LawApp
//
//  Created by vm on 26/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class ProfileQuiz: UIViewController, UITextFieldDelegate {
    
    //MARK: Variables
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var Part1Stack: UIStackView!
    @IBOutlet weak var MultiStack: UIStackView!

    
    
    var currentQuestion = 0
    var answers = Array<String>(repeating: "", count: 9)
    
    //MARK: Defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        TextField.delegate = self
        currentQuestion = 0
        MultiStack.isHidden = true
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
            break
        case 1:
            QuestionLabel.text = "2. What's Your Favourite TV Show?"
            break
        case 2:
            QuestionLabel.text = "3. I'm a Little Obsessed With ..."
            break
        case 3:
            QuestionLabel.text = "4. Do You Know What Lawyers Do?"
            break
        case 4:
            QuestionLabel.text = "5. If I Didn't do Law, I Would ..."
            break
        case 5:
            QuestionLabel.text = "6. Who is your Favourite Character in a Legal TV Show?"
            break
        case 6:
            QuestionLabel.text = "7. What do You do in Your Spare Time?"
            break
        case 7:
            QuestionLabel.text = "8. The First Section I Read in a Newspaper Is..."
            break
        case 8:
            Part1Stack.isHidden = true
            MultiStack.isHidden = false
            
        default: break
        }
    }
    
    func FinishQuiz(){
        for i in 0...8 {
            NSLog(String(answers[i]))
        }
        performSegue(withIdentifier: "FinishProfileQuiz", sender: self)
    }
    

    @IBAction func NextButtonPush(_ sender: UIButton) {
        answers[currentQuestion] = TextField.text!
        TextField.text = ""
        currentQuestion+=1
        doQuestions()
    }
    

    
    @IBAction func DayMonday(_ sender: UIButton) {
        answers[8] = "Monday"
        FinishQuiz()
    }
   
    @IBAction func DayTuesday(_ sender: UIButton) {
        answers[8] = "Tuesday"
        FinishQuiz()
    }
   
    
    @IBAction func Wednesday(_ sender: UIButton) {
        answers[8] = "Wednesday"
        FinishQuiz()
    }
    

   
    @IBAction func DayThursday(_ sender: UIButton) {
        answers[8] = "Thursday"
        FinishQuiz()
    }
    
   
    @IBAction func DayFriday(_ sender: UIButton) {
        answers[8] = "Friday"
        FinishQuiz()
    }
    

    @IBAction func DaySaturday(_ sender: UIButton) {
        answers[8] = "Saturday"
        FinishQuiz()
    }
    
    
    @IBAction func DaySunday(_ sender: UIButton) {
        answers[8] = "Sunday"
        FinishQuiz()
    }
    
    @IBAction func HomeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        //performSegue(withIdentifier: "ProfileQuizToHome", sender: self)
    }
    
    
}
