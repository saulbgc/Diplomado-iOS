//
//  ViewController.swift
//  AutoLayout
//
//  Created by Saul G on 11/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        //texto.translatesAutoresizingMaskIntoConstraints = false
        //texto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //texto.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

