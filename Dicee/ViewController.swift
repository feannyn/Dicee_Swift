//
//  ViewController.swift
//  Dicee
//
//  Created by Nicholas Feanny on 9/8/18.
//  Copyright © 2018 Nicholas Feanny. All rights reserved.
//

//bread and butter import for swift development
//makes the connections to link the view to the storyboard
import UIKit

class ViewController: UIViewController {
    
    //these variables will be used to help generate random numbers between 1 - 6
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //IBOutlet = changes appearance of ui element
    //IB = Interface Builder Outlet ->type of connection
    //type = UIImageView
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    //this function that only triggers when the screen loads initially
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //IBAction = notifies when the element has been interacted with
    //{} are blocks of used so when button is pressed, what should happen in response
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //".image" is a property of _______
        //UIImage is a type ,i.e., like String, or Int
        //special function "UIImage(named: String)" is used to pull images from out assets folder
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

