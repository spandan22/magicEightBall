//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Daniel Musser on 2/4/17.
//  Copyright © 2017 Daniel Musser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textEnteredByUser: UITextField!
    
    @IBOutlet weak var triangleBackground: UIImageView!
    
    @IBOutlet weak var textInsideTriangle: UILabel!
    
    func getPositiveAnswer () -> String {
        var chosenAnswer = ""
        let randomchoice = arc4random_uniform(10)
        
        switch randomchoice {
        case 0:
            chosenAnswer = "It is certain"
        case 1:
            chosenAnswer = "It is decidedly so"
        case 2:
            chosenAnswer = "Without a doubt"
        case 3:
            chosenAnswer = "Yes, definitely"
        case 4:
            chosenAnswer = "You may rely on it"
        case 5:
            chosenAnswer = "As I see it, yes"
        case 6:
            chosenAnswer = "Most likely"
        case 7:
            chosenAnswer = "Outlook good"
        case 8:
            chosenAnswer = "Yes"
        case 9:
            chosenAnswer = "Signs point to yes"
        default:
            chosenAnswer = "It's not the spoon that moves, but you..."
        }
        
        
        return chosenAnswer
    }
    
    func getNeutralAnswer () -> String {
        var chosenAnswer = ""
        let randomchoice = arc4random_uniform(5)
        
        switch randomchoice {
        case 0:
            chosenAnswer = "Reply hazy try again"
        case 1:
            chosenAnswer = "Ask again later"
        case 2:
            chosenAnswer = "Better not tell you now"
        case 3:
            chosenAnswer = "Cannot predict now"
        case 4:
            chosenAnswer = "Concentrate and ask again"
        default:
            chosenAnswer = "It's not the spoon that moves, but you..."
        }
        
        return chosenAnswer
    }
    
    func getNegativeAnswer () -> String {
        var chosenAnswer = ""
        let randomchoice = arc4random_uniform(5)
        
        switch randomchoice {
        case 0:
            chosenAnswer = "Don't count on it"
        case 1:
            chosenAnswer = "My reply is no"
        case 2:
            chosenAnswer = "My sources say no"
        case 3:
            chosenAnswer = "Outlook not so good"
        case 4:
            chosenAnswer = "Very doubtful"            
        default:
            chosenAnswer = "It's not the spoon that moves, but you..."
        }
        
        return chosenAnswer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        triangleBackground.isHidden = true
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

