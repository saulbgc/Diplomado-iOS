//
//  SecondViewController.swift
//  iTunesTable
//
//  Created by Saul G on 01/09/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var fromFirstView: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = fromFirstView
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
