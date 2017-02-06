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
    
    var buttonAlreadyPressed: Bool = false
    
    var amountTriangleRotated: CGFloat = CGFloat(M_PI * 3)
    
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
        
        triangleBackground.alpha = 0
        textInsideTriangle.alpha = 0
    }

    // when "buttonWasPressed" is ran, it thinks of a random number between 0 and 30 and then sees if that number is equal to, less than, or greater than the length of the string that was entered. Then it grabs a string using the getAnswer functions above based on the result of that comparison.
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        // Dismisses the keyboard once the button is pressed
        textEnteredByUser.resignFirstResponder()
        
        let randomNumber = arc4random_uniform(30)
        let textFromUser: String = textEnteredByUser.text!
        
        
        if Int(randomNumber) > textFromUser.characters.count {
            textInsideTriangle.text = getNegativeAnswer()
        }
        else if Int(randomNumber) == textFromUser.characters.count {
            textInsideTriangle.text = getNeutralAnswer()
        }
        else if Int(randomNumber) < textFromUser.characters.count {
            textInsideTriangle.text = getPositiveAnswer()
        }
        else {
            print("Something went wrong in the buttonWasPressed function")
        }
        
        print("\n---------------------")
        print("textFromUser = \(textFromUser.characters.count)")
        print("randomNumber = \(randomNumber)")
        print("MPI is \(amountTriangleRotated * 3)")
        
        if buttonAlreadyPressed == true {
            
            UIView.animate(withDuration: 1, delay: 0.0, options: [.curveEaseIn, .curveEaseOut], animations: {
                self.textInsideTriangle.alpha = 0
                self.triangleBackground.alpha = 0
                self.triangleBackground.transform = CGAffineTransform(rotationAngle: self.amountTriangleRotated * 2.5)
                },
                completion: { finished in
                    
                    UIView.animate(withDuration: 1, delay: 0.0, options: [.curveEaseIn, .curveEaseOut], animations: {
                        self.textInsideTriangle.alpha = 1
                        self.triangleBackground.alpha = 1
                        self.triangleBackground.transform = CGAffineTransform(rotationAngle: self.amountTriangleRotated)
                    })
            })
            
        } else {
            UIView.animate(withDuration: 2, delay: 0.0, options: [.curveEaseIn, .curveEaseOut], animations: {
                self.textInsideTriangle.alpha = 1
                self.triangleBackground.alpha = 1
                self.triangleBackground.transform = CGAffineTransform(rotationAngle: self.amountTriangleRotated)
                }
            )
        }
        
        buttonAlreadyPressed = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

