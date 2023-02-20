//
//  CurrencyLogic.swift
//  CurrencyConverteriOS
//
//  Created by Taylor Grafft on 2/19/23.
//

import Foundation

struct CurrencyLogic {
    
    var euroSwitch = true
    var poundSwitch = true
    var yenSwitch = true
    var canadianSwitch = true
    
    let euroRate: Double = 1.07
    let poundRate: Double = 1.20
    let yenRate: Double = 0.0074
    let canadianRate: Double = 0.74
    
    
    mutating func setEuro(_ switchValue: Bool) {
        if switchValue {
            euroSwitch = true
        } else {
            euroSwitch = false
        }
    }
    
    mutating func setPound(_ switchValue: Bool) {
        if switchValue {
            poundSwitch = true
        } else {
            poundSwitch = false
        }
    }
    
    mutating func setYen(_ switchValue: Bool) {
        if switchValue {
            yenSwitch = true
        } else {
            yenSwitch = false
        }
    }
    
    mutating func setCanadian(_ switchValue: Bool) {
        if switchValue {
            canadianSwitch = true
        } else {
            canadianSwitch = false
        }
    }
    
    mutating func calculateEuro(usdAmount : Double) -> String {
        
        var result: Double = 0
        var euroForm = ""
        
        if euroSwitch {
            result = usdAmount / euroRate
            euroForm = String(format: "%.2f", round(result * 100) / 100)
        }
        return euroForm
    }
    
    mutating func calculatePound(usdAmount : Double) -> String {
        var result: Double = 0
        var poundForm = ""
        
        if poundSwitch {
            result = usdAmount / poundRate
            poundForm = String(format: "%.2f", round(result * 100) / 100)
        }
        return poundForm
    }
    
    mutating func calculateYen(usdAmount : Double) -> String {
        var result: Double = 0
        var yenForm = ""
        
        if yenSwitch {
            result = usdAmount / yenRate
            yenForm = String(format: "%.2f", round(result * 100) / 100)
        }
        return yenForm
    }
    
    mutating func calculateCandidan(usdAmount: Double) -> String {
        var result: Double = 0
        var canForm = ""
        
        if canadianSwitch {
            result = usdAmount / canadianRate
            canForm = String(format: "%.2f", round(result * 100) / 100)
        }
        return canForm
    }
    
}
