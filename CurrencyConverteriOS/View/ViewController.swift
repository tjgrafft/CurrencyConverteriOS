//
//  ViewController.swift
//  CurrencyConverteriOS
//
//  Created by Taylor Grafft on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    var euroSwitch = true
    var poundSwitch = true
    var yenSwitch = true
    var canadianSwitch = true
    
    var euroFinal : String = ""
    var poundFinal : String = ""
    var yenFinal : String = ""
    var canadianFinal : String = ""
    
    var currencyLogic = CurrencyLogic()
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var usdAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        warningLabel.text = ""
    }

    @IBAction func Euro(_ sender: UISwitch) {
    //    if sender.isOn {
    //        euroSwitch = true
    //    } else {
    //        euroSwitch = false
    //    }
        currencyLogic.setEuro(sender.isOn)
    }
    
    @IBAction func Pound(_ sender: UISwitch) {
    //    if sender.isOn {
    //        poundSwitch = true
    //    } else {
    //        poundSwitch = false
    //    }
        currencyLogic.setPound(sender.isOn)
    }
    
    @IBAction func Yen(_ sender: UISwitch) {
    //    if sender.isOn {
    //        yenSwitch = true
    //    } else {
    //        yenSwitch = false
    //    }
        currencyLogic.setYen(sender.isOn)
    }
    
    @IBAction func Canadian(_ sender: UISwitch) {
    //    if sender.isOn {
    //        canadianSwitch = true
    //    } else {
    //        canadianSwitch = false
    //    }
        currencyLogic.setCanadian(sender.isOn)
    }
    
    @IBAction func Convert(_ sender: UIButton) {
        
        guard let usdText = usdAmount.text, let usd = Double(usdText) else {
            warningLabel.text = "Error, please enter an Integer"
            return
        }
        
        euroFinal = currencyLogic.calculateEuro(usdAmount: usd)
        poundFinal = currencyLogic.calculatePound(usdAmount: usd)
        yenFinal = currencyLogic.calculateYen(usdAmount: usd)
        canadianFinal = currencyLogic.calculateCandidan(usdAmount: usd)
        self.performSegue(withIdentifier: "toCurrencyAmount", sender: self)
    }
//        let euroRate: Double = 1.07
//        let poundRate: Double = 1.20
//        let yenRate: Double = 0.0074
//        let canadianRate: Double = 0.74
//
//        guard let usdText = usdAmount.text, let usd = Double(usdText) else {
//            warningLabel.text = "Error, please enter an Integer"
//            return
//        }
//
//        var result: Double = 0
//        var result1: Double = 0
//        var result2: Double = 0
//        var result3: Double = 0
//        var formresult = ""
//        var formresult1 = ""
//        var formresult2 = ""
//        var formresult3 = ""
//
//        if euroSwitch {
//            result = usd / euroRate
//            formresult = String(format: "%.2f", round(result * 100) / 100)
//        }
//        if poundSwitch {
//            result1 = usd / poundRate
//            formresult1 = String(format: "%.2f", round(result1 * 100) / 100)
//        }
//        if yenSwitch {
//            result2 = usd / yenRate
//            formresult2 = String(format: "%.2f", round(result2 * 100) / 100)
//        }
//        if canadianSwitch {
//            result3 = usd / canadianRate
//            formresult3 = String(format: "%.2f", round(result3 * 100) / 100)
//        }
//
//        if result == 0 {
//            warningLabel.text = "Please select at least one currency"
//        } else {
//            warningLabel.text = ""
//            print("$ \(usd) \n \(formresult) \n \(formresult1) \n \(formresult2) \n \(formresult3)")
//        }
//
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCurrencyAmount" {
            let currencyNavigation = segue.destination as! CurrencyAmountView
            currencyNavigation.usdFinal = (usdAmount.text)!
            currencyNavigation.euroFinal = euroFinal
            currencyNavigation.poundFinal = poundFinal
            currencyNavigation.yenFinal = yenFinal
            currencyNavigation.canadianFinal = canadianFinal
        }
    }
    
}

