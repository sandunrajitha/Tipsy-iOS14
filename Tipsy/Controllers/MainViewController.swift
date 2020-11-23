//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var billTotalText: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitStepper: UIStepper!
    
    var billTotal: Double = 0.0
    var percentage: Int = 0
    var split: Int = 0
    var tip: Tip?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func percentageSelected(_ sender: UIButton) {
        billTotalText.resignFirstResponder()
        percentageButton(sender)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(sender.currentTitle ?? "calculatePressed")
        billTotal = Double(billTotalText.text ??  "0.00") ??  0.00
    }
    
    @IBAction func splitStepperPressed(_ sender: UIStepper) {
        billTotalText.resignFirstResponder()
        splitLabel.text = String(format: "%.0f", sender.value)
    }
    
    
    func percentageButton(_ sender: UIButton) {
        if sender.currentTitle == "0%" {
            percentage = 0
            zeroButton.isSelected = true
            tenButton.isSelected = false
            twentyButton.isSelected = false
        } else if  sender.currentTitle == "10%" {
            percentage = 10
            zeroButton.isSelected = false
            tenButton.isSelected = true
            twentyButton.isSelected = false
        } else if sender.currentTitle == "20%" {
            percentage = 20
            zeroButton.isSelected = false
            tenButton.isSelected = false
            twentyButton.isSelected = true
        }
    }
}

