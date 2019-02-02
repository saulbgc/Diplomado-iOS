//
//  BeerCell.swift
//  BrewApp
//
//  Created by Miguel Vicario on 10/26/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class BeerCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var abvTextLabel: UILabel!
    @IBOutlet weak var ibuTextLabel: UILabel!
    @IBOutlet weak var beerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with beer: Beer) {
        nameLabel.text = beer.name
        if let abv = beer.abv {
            abvTextLabel.text = "abv: " + abv
        }
        else {
            abvTextLabel.text = "abv is not available"
        }
        if let ibu = beer.ibu {
            ibuTextLabel.text = "ibu: " + ibu
        }
        else {
            ibuTextLabel.text = "ibu is not available"
        }


    }
    
}
