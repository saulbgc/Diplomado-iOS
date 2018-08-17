//
//  ViewController.swift
//  RPS
//
//  Created by Saul G on 16/08/18.
//  Copyright © 2018 SaulG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var moonLabel: UILabel!
    @IBOutlet weak var juguemosLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reset()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reset() {
        moonLabel.text = "🌚"
        juguemosLabel.text = "¡Juguemos!"
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
        playAgainButton.isHidden = true
    }
    
    func play (_ playerTurn: Sign) {
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        let opponent = randomSign()
        moonLabel.text = opponent.emoji
        let gameResult = playerTurn.takeTurn (opponent)
        switch gameResult {
        case .draw:
            juguemosLabel.text = "¡Empate!"
        case .win:
            juguemosLabel.text = "¡Ganaste!🤩"
        case .lose:
            juguemosLabel.text = "¡Perdiste!😖"
        case .start:
            juguemosLabel.text = "¡Juguemos!"
        }
        
        switch playerTurn {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
            
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case.scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        playAgainButton.isHidden = false
    }
    
    @IBAction func playAgainSelected(_ sender: Any) {
        reset()
    }
    
    @IBAction func rockSelected(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(Sign.paper)
    }
    @IBAction func scissorsSelected(_ sender: Any) {
        play (Sign.scissors)
    }
    
}

