//
//  Client.swift
//  BrewApp
//
//  Created by Ricardo_Abraham_Desiderio_Diplomado on 27/10/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class Client {
    
    static let shared = Client()
    
    var baseURLComponents = URLComponents(string: "https://opentab.herokuapp.com")!
    
    func getData(path: String, completion: @escaping (Data) -> Void) {
        baseURLComponents.path = path
        let task = URLSession.shared.dataTask(with: baseURLComponents.url!) { (data, response, error) in
            if let data = data {
                DispatchQueue.main.async { completion(data) }
            }
            else {
                print("We can not get the data...")
            }
        }
        task.resume()
    }
    
}
