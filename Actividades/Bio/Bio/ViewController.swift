//
//  ViewController.swift
//  Bio
//
//  Created by Saul G on 18/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var bioText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        foto.image = UIImage(named: "saul")
    }
    @IBAction func respondToTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

