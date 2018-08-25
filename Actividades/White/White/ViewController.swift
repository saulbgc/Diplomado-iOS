//
//  ViewController.swift
//  White
//
//  Created by Saul G on 17/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screen: UIView!
    @IBOutlet weak var offButton: UIButton!
    @IBOutlet weak var luzButton: UIButton!
    @IBOutlet weak var strobeButton: UIButton!
    
    
    var change: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    changeColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeColor (){
        while (change == true){
        screen.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        sleep(1)
        screen.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        sleep(1)
        }
        
    }
    
    @IBAction func luzButton(_ sender: UIButton) {
        screen.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    @IBAction func offButton(_ sender: UIButton) {
        screen.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    @IBAction func strobeButton(_ sender: Any) {
    }
    
    
}

