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
    var highestAnswer = 0
    var answers = Array<Int>(repeating: 0, count: 8)
    /*Key:
        answers[0] = Environmental
        answers[1] = Criminal
        answers[2] = Policy
        answers[3] = Family
        answers[4] = Academia
        answers[5] = Corporate
        answers[6] = Litigation
        answers[7] = Barrister
    */
    
    
    
    //MARK: Defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        clearRadios()
        currentQuestion = 0
        WarningLabel.isHidden = true
        doQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: Actions
    func clearRadios(){
        Button1.backgroundColor = UIColor.gray
        Button2.backgroundColor = UIColor.gray
        Button3.backgroundColor = UIColor.gray
        Button4.backgroundColor = UIColor.gray
        Button5.backgroundColor = UIColor.gray
        selection = -1
     }
    
    func doQuestions(){
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
            NextButton.setTitle("Finish", for: UIControlState())
            break
            
        default:
            break
        }
    }
    
    @IBAction func Radio1(_ sender: UIButton) {
        clearRadios()
        Button1.backgroundColor = UIColor.cyan
        selection = 0
    }
    
    @IBAction func Radio2(_ sender: UIButton) {
        clearRadios()
        Button2.backgroundColor = UIColor.cyan
        selection = 1
    }
    
    @IBAction func Radio3(_ sender: UIButton) {
        clearRadios()
        Button3.backgroundColor = UIColor.cyan
        selection = 2
    }
    
    @IBAction func Radio4(_ sender: UIButton) {
        clearRadios()
        Button4.backgroundColor = UIColor.cyan
        selection = 3
    }
    
    @IBAction func Radio5(_ sender: UIButton) {
        clearRadios()
        Button5.backgroundColor = UIColor.cyan
        selection = 4
    }
    
    @IBAction func NextPress(_ sender: UIButton) {
        WarningLabel.isHidden = true
        if(selection == -1){
            WarningLabel.isHidden = false
            return
        }
        switch currentQuestion {
        case 0:
            answers[0] = answers[0] + 10*selection //Env
            break
        case 1:
            answers[1] = answers[1] + 10*selection //Crim
            answers[2] = answers[2] + 5*selection  //Pol
            break
        case 2:
            answers[3] = answers[3] + 10*selection //Fam
            answers[2] = answers[2] + 5*selection  //Pol
            break
        case 3:
            answers[4] = answers[4] + 10*selection //Aca
            break
        case 4:
            answers[5] = answers[5] + 5*selection //Corp
            answers[6] = answers[6] + 10*selection //Lit
            break
        case 5:
            answers[5] = answers[5] + 10*selection //Corp
            break
        case 6:
            answers[7] = answers[7] + 10*selection //Bar
            answers[6] = answers[6] + 5*selection //Lit
            break
        default:
            break
        }
        
        if(currentQuestion < 6){
            currentQuestion+=1
            doQuestions()
        }else if(currentQuestion == 6){
            for i in 0...7 {
                NSLog(String(answers[i]))
            }

            highestAnswer = answers.max()!
            let LawType = Int(answers.index(of: highestAnswer)!)
            switch LawType {
            case 0:
                performSegue(withIdentifier: "ToEnv", sender: self)
                break
            case 1:
                performSegue(withIdentifier: "ToCrim", sender: self)
                break
            case 2:
                performSegue(withIdentifier: "ToPol", sender: self)
                break
            case 3:
                performSegue(withIdentifier: "ToFam", sender: self)
                break
            case 4:
                performSegue(withIdentifier: "ToAca", sender: self)
                break
            case 5:
                performSegue(withIdentifier: "ToCorp", sender: self)
                break
            case 6:
                performSegue(withIdentifier: "ToLit", sender: self)
                break
            case 7:
                performSegue(withIdentifier: "ToBar", sender: self)
            default:
                performSegue(withIdentifier: "EndCurrentQuiz", sender: self)
                break
            }
            
        }
    }
    
    @IBAction func toHome(_ sender: UIButton) {
        performSegue(withIdentifier: "CurrentQuiz2ToHome", sender: self)
    }
    
}
