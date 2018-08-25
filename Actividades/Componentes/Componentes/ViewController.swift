//
//  ViewController.swift
//  Componentes
//
//  Created by Saul G on 18/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var slideImage: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.didReceiveMemoryWarning()
        imageChanged()
    }

    func imageChanged(){
        if slideImage.value <= 0.33 {
            foto.image = UIImage(named: "colors")
        }
        else if slideImage.value > 0.33 && slideImage.value <= 0.66 {
            foto.image = UIImage(named: "automata")
        }
        else{
            foto.image = UIImage(named: "parallax")
        }
    }
    
    override func didReceiveMemoryWarning() {
       
    }

    @IBAction func sliderImageChange(_ sender: UISlider) {
        imageChanged()
    }
    
}

