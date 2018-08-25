//
//  ViewController.swift
//  ColorVier
//
//  Created by Saul G on 11/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Aquí se modifica el cuadrito de color view xd
        colorView.layer.borderWidth=5
        colorView.layer.cornerRadius=20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateControls()
       updateColor()
    }
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
            
        }
        
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
            
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
            
        }
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
        updateColor()
    }
    
    
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateControls()
        updateColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

