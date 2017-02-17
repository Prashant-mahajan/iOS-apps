//
//  ViewController.swift
//  First Project
//
//  Created by Prashant Mahajan on 15/02/17.
//  Copyright © 2017 Prashant Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textinput: UITextField!
    
    @IBAction func Button(_ sender: Any) {
        let ans = Int(Textinput.text!)! * 10
        Output.text = String(ans)
    }
    
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

