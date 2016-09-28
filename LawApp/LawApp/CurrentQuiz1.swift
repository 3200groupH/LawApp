//
//  CurrentQuiz1.swift
//  LawApp
//
//  Created by vm on 28/09/2016.
//  Copyright © 2016 GroupH@uwa.edu.au. All rights reserved.
//

import UIKit

class CurrentQuiz1: UIViewController {

    //MARK: Variables
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice3: UIButton!
    @IBOutlet weak var Choice4: UIButton!
    @IBOutlet weak var MultiStack: UIStackView!
/*  @IBOutlet weak var Radio1: UIButton!
    @IBOutlet weak var Radio2: UIButton!
    @IBOutlet weak var Radio3: UIButton!
    @IBOutlet weak var Radio4: UIButton!
    @IBOutlet weak var Radio5: UIButton!*/
    
    var currentQuestion = 0
    
    //MARK: Defaults
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = 0
        //RadioQuestionsView.hidden = true
        //clearRadios()
        doQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Actions
    
    func doQuestions(){
        switch currentQuestion{
        case 0:
            QuestionLabel.text = "Who is Your Favourite Character in a Legal TV Show?"
            break
        case 1:
            QuestionLabel.text = "What do You do in Your Spare Time?"
            break
        case 2:
            QuestionLabel.text = "The First Section I Read in a Newspaper Is..."
            break
        case 3:
            performSegueWithIdentifier("QuizToRadio", sender: self)
            
            //RadioQuestionsView.hidden = false
            break
            
        default:
            break
        }
        
    }
    
  /*  func clearRadios(){
        Radio1.backgroundColor = UIColor.grayColor()
        Radio2.backgroundColor = UIColor.grayColor()
        Radio3.backgroundColor = UIColor.grayColor()
        Radio4.backgroundColor = UIColor.grayColor()
        Radio5.backgroundColor = UIColor.grayColor()
    }*/

    @IBAction func Button1(sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }
   
    @IBAction func Button2(sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }

    @IBAction func Button3(sender: UIButton) {
        currentQuestion+=1
        doQuestions()
    }

    @IBAction func Button4(sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }
    
 /*   @IBAction func RButton1(sender: UIButton) {
        clearRadios()
        Radio1.backgroundColor = UIColor.cyanColor()
    }
    
    @IBAction func RButton2(sender: UIButton) {
        clearRadios()
        Radio2.backgroundColor = UIColor.cyanColor()
    }
    
    @IBAction func RButton3(sender: UIButton) {
        clearRadios()
        Radio3.backgroundColor = UIColor.cyanColor()
    }
    
    @IBAction func RButton4(sender: UIButton) {
        clearRadios()
        Radio4.backgroundColor = UIColor.cyanColor()
    }
    
    @IBAction func RButton5(sender: UIButton) {
        clearRadios()
        Radio5.backgroundColor = UIColor.cyanColor()
    }
    */
    
}
