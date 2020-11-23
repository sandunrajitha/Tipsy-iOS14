//
//  Tip.swift
//  Tipsy
//
//  Created by Sandun Liyanage on 11/23/20.
//  Copyright © 2020. All rights reserved.
//

struct Tip {
    
    var billTotal: Double
    var percentage: Int
    var split: Int
    var tipValue: Double
    
    init(_ billTotal: Double,  _ percentage: Int, _ split: Int, _ tipValue: Double) {
        self.billTotal = billTotal
        self.percentage = percentage
        self.split = split
        self.tipValue = tipValue
    }
    
}
