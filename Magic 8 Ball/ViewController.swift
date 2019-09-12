//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Christian HUANG on 12/09/2019.
//  Copyright © 2019 Christian HUANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = Int.random(in: 0 ... 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
    }

    func changeImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImage()
    }
}

