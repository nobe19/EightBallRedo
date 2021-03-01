//
//  ViewController.swift
//  EightBall
//
//  Created by John Gallaugher on 2/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let answerArray = ["It is certain",
                       "It is decidedly so",
                       "Without a doubt",
                       "Yes, definitely",
                       "You may rely on it",
                       "As I see it, yes",
                       "Most likely",
                       "Outlook good",
                       "Yes",
                       "Signs point to yes",
                       "Reply hazy try again",
                       "Ask again later",
                       "Better not tell you now",
                       "Cannot predict now",
                       "Concentrate and ask again",
                       "Don't count on it",
                       "My reply is no",
                       "My sources say no",
                       "Outlook not so good",
                       "Very doubtful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    func getResult() {
        resultLabel.alpha = 0.0
        resultLabel.text = answerArray.randomElement()
        UIView.animate(withDuration: 1.0, animations: {self.resultLabel.alpha = 1.0})
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        getResult()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getResult()
    }
    
}


