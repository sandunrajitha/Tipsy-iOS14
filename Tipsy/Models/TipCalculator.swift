//
//  TipCalculator.swift
//  Tipsy
//
//  Created by Sandun Liyanage on 11/23/20.
//  Copyright © 2020. All rights reserved.
//

struct TipCalculator {

    var billTotal: Double
    var percentage: Int
    var split: Int
    
    init(_ billTotal: Double, _ percentage: Int, _ split: Int) {
        self.billTotal = billTotal
        self.percentage = percentage
        self.split = split
    }
    
    mutating func calculateTip() -> Tip{
        
        var tipValue: Double
        
        tipValue = (billTotal * (Double(percentage)/100))/Double(split)
        let tip = Tip(billTotal, percentage, split, tipValue)
        
        return tip
    }
}
