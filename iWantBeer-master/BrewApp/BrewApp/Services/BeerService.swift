//
//  BeerService.swift
//  BrewApp
//
//  Created by Ricardo_Abraham_Desiderio_Diplomado on 27/10/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class ProductsService {
    
    static let shared = ProductsService()
    let jsonDecoder = JSONDecoder()
    
    func getBeers( completion: @escaping ([Beer]?) -> Void) {
        let path = "/api/v1/business/1/beers"
        Client.shared.getData(path: path) { (data) in
            if let beers = try? self.jsonDecoder.decode(Array<Beer>.self, from: data) {
                DispatchQueue.main.async { completion(beers) }
            }
            else {
                print("We can not decode the data")
                DispatchQueue.main.async { completion(nil) }
            }
        }
    }
    
}
