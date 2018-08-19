//
//  ViewController.swift
//  Eight Ball
//
//  Created by Kevin Lee on 8/18/18.
//  Copyright © 2018 Kevin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber : Int = 0

    @IBOutlet weak var BallView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomizeBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressAskbutton(_ sender: Any) {
        randomizeBall()
    }
    
    func randomizeBall() {
        let eightBall = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        randomNumber = Int(arc4random_uniform(5))
        BallView.image = UIImage(named: eightBall[randomNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeBall()
    }
    
}

