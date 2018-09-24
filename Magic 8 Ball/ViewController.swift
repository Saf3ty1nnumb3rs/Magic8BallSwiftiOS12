//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Joshua Sample on 9/21/18.
//  Copyright © 2018 Joshua Sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    //Outlet for 8 Ball
    @IBOutlet weak var imageView8Ball: UIImageView!
    
    //Lifecycle - post view load
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateRandomAnswer()
    }
    
    
    //Action for Ask Button
    @IBAction func askButtonPress(_ sender: Any) {
        generateRandomAnswer()
    }
    
    //call to randomize answer
    func generateRandomAnswer() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView8Ball.image = UIImage(named: ballArray[randomBallNumber])
    }
}

