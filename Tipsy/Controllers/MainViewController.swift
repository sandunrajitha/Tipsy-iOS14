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
    var percentage: Int = 10
    var split: Int = 0
    var tip: Tip?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billTotalText.becomeFirstResponder()
    }

    @IBAction func percentageSelected(_ sender: UIButton) {
        billTotalText.resignFirstResponder()
        percentageButton(sender)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTotal = Double(billTotalText.text ??  "0.00") ??  0.00
        split = Int(splitStepper.value)
        
        var tipCalculator = TipCalculator(billTotal, percentage, split)
        tip = tipCalculator.calculateTip()
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    @IBAction func splitStepperPressed(_ sender: UIStepper) {
        billTotalText.resignFirstResponder()
        splitLabel.text = String(format: "%.0f", sender.value)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showResult"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.tip = self.tip
        }
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

