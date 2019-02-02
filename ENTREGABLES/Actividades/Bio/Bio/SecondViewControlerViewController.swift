//
//  SecondViewControlerViewController.swift
//  Bio
//
//  Created by Saul G on 18/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class SecondViewControlerViewController: UIViewController {
    @IBAction func keyboardReturnTapped(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)}
    }
}
