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

    var currentQuestion = 0
    
    //MARK: Defaults
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = 0

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
            performSegue(withIdentifier: "QuizToRadio", sender: self)
            break
            
        default:
            break
        }
        
    }
    


    @IBAction func Button1(_ sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }
   
    @IBAction func Button2(_ sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }

    @IBAction func Button3(_ sender: UIButton) {
        currentQuestion+=1
        doQuestions()
    }

    @IBAction func Button4(_ sender: UIButton) {
        
        currentQuestion+=1
        doQuestions()
    }
    
    @IBAction func toHome(_ sender: AnyObject) {
        performSegue(withIdentifier: "CurrentQuiz1ToHome", sender: self)
    }
    
}
