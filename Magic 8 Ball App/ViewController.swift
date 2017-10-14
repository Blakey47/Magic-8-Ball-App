//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Darragh on 10/13/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

@IBDesignable

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var randomBallIndex: Int = 0
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:0.16, green:0.67, blue:0.75, alpha:1.0)
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallIndex = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}


        

    


