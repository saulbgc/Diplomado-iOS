//
//  DetailBeerViewController.swift
//  BrewApp
//
//  Created by Miguel Vicario on 10/26/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class DetailBeerViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var alcoholLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var agregarButton: UIButton!
    
    var beer: Beer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        agregarButton.layer.cornerRadius = 10
        updateUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        //detailImage.image = beer.image
        //segmentLabel.text = beer.segment.description
        //colorLabel.text = beer.color.description
        //alcoholLabel.text = beer.alcohol
        //countryLabel.text = beer.country
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
