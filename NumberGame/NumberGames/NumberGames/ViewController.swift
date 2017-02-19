//
//  ViewController.swift
//  NumberGames
//
//  Created by Prashant Mahajan on 19/02/17.
//  Copyright © 2017 Prashant Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var textOutput: UITextField!
    
    @IBAction func Evaluate(_ sender: Any) {
        let x = Int(arc4random_uniform(5))
        let y = Int(textInput.text!)!
        if (x == y){
            textOutput.text = String("You win!!!!")
        }
        else{
            textOutput.text = String("You lose")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

