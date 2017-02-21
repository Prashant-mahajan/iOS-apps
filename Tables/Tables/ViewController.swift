//
//  ViewController.swift
//  Tables
//
//  Created by Prashant Mahajan on 16/02/17.
//  Copyright © 2017 Prashant Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var activeRow = 0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activeRow = indexPath.row
        performSegue(withIdentifier: "Segue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if segue.identifier == "Segue"{
            let seguetoSecond = segue.destination as! SecondViewController
            seguetoSecond.number = activeRow
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

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 30
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = String(indexPath.row)
        return cell
        
    }

}

