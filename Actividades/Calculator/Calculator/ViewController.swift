//
//  ViewController.swift
//  Calculator
//
//  Created by Saul G on 18/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func numbers(_ sender: UIButton) {
        label.text = String(sender.tag)
    }
    

    
}

