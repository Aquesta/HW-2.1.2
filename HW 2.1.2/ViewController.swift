//
//  ViewController.swift
//  HW 2.1.2
//
//  Created by Геннадий Красношлык on 19.08.2020.
//  Copyright © 2020 Aquesta's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
        redView.alpha = 0.3
        greenView.alpha = 0.3
        yellowView.alpha = 0.3
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        changeViewAlpha(red: redView, green: greenView, yellow: yellowView)
        }
    
    func changeViewAlpha (red: UIView, green: UIView, yellow: UIView) {
        if red.alpha.rounded() == 0.0 && green.alpha.rounded() == 0.0 && yellow.alpha.rounded() == 0.0 {
            red.alpha = 1
        } else if red.alpha == 1.0 {
            red.alpha = 0.3
            yellow.alpha = 1
        } else if yellow.alpha == 1 {
            yellow.alpha = 0.3
            green.alpha = 1
        } else {
            red.alpha = 1
            green.alpha = 0.3
        }
    }
}

