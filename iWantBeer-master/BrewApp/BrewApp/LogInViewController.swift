//
//  LogInViewController.swift
//  BrewApp
//
//  Created by Miguel Vicario on 10/26/18.
//  Copyright © 2018 Miguel Vicario. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let users:[String] = ["miguelvicario","saulcastillo","ricardo","chaino"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logInButton(_ sender: Any) {
        if users.contains(userTextField.text!) && passwordTextField.text == "12345"{
            performSegue(withIdentifier: "correctLogIn", sender: nil)
        }
        else{
            print("Error de LogIn")
            return
        }
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
