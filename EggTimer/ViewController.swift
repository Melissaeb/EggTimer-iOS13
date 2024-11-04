//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let eggTimes : [String: Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        var eggTime = eggTimes[hardness]!
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            (Timer) in
            if eggTime > 0 {
                print("\(eggTime) seconds.")
                eggTime -= 1
            } else {
                Timer.invalidate()
            }
        }
    }
    
}
