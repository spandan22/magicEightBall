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
        let randomchoice = arc4random_uniform(11)
        
        switch randomchoice {
        case 0:
            chosenAnswer = "It is certain"
            
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
            chosenAnswer = "It is certain"
            
        default:
            chosenAnswer = "It's not the spoon that moves, but you..."
        }
        
        return chosenAnswer
    }
    
    func getNegativeAnswer () -> String {
        var chosenAnswer = ""
        let randomchoice = arc4random_uniform(11)
        
        switch randomchoice {
        case 0:
            chosenAnswer = "It is certain"
            
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

