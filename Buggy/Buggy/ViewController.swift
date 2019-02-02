//
//  ViewController.swift
//  Buggy
//
//  Created by Saul Castillo on 12/15/18.
//  Copyright © 2018 Saul Castillo. All rights reserved.
//


import UIKit

enum IteratorErrors: Error {
    case notEnoughOddNumbers
    case notEnoughEvenNumbers
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func buttonTaped(_ sender: UIButton) {
        //print("Method /(#fuction) in file \(#file) line \(#line) called ")
        do {
            try iterateArray()
        } catch{}
        //badMethod()
    }
    
    
    func iterateArray() throws {
        try [1,2,3,4,5,6,7,8].forEach {(number) in
        if (number % 2 == 0){
            throw IteratorErrors.notEnoughOddNumbers
        } else {
            throw IteratorErrors.notEnoughEvenNumbers
        }
    }
}
    
    func badMethod() {
        
        let array = NSMutableArray()
        
        for i in 0..<10 {
            array.insert(i, at: i)
        }
        
        for _ in 0...10 {
            array.removeObject(at: 0)
        }
        
    }
    
    
}
