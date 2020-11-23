//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Sandun Liyanage on 11/24/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var tipValueText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    
    var tip: Tip?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tipValueText.text = String(format: "%.2f", tip?.tipValue ?? 0.00)
        descriptionText.text = "Split between \(tip?.split ?? 0) people, with \(tip?.percentage ?? 0)% tip."
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
