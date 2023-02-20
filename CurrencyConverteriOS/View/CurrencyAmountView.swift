//
//  CurrencyAmountView.swift
//  CurrencyConverteriOS
//
//  Created by Taylor Grafft on 2/19/23.
//

import UIKit

class CurrencyAmountView: UIViewController {

    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var canadianLabel: UILabel!
    
    @IBOutlet weak var usdLabel: UILabel!
    
    var usdFinal : String = ""
    var euroFinal : String = ""
    var poundFinal : String = ""
    var yenFinal : String = ""
    var canadianFinal : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "Amount in USD: $\(usdFinal)"
        euroLabel.text = "\(euroFinal)"
        poundLabel.text = "\(poundFinal)"
        yenLabel.text = "\(yenFinal)"
        canadianLabel.text = "\(canadianFinal)"
        

        // Do any additional setup after loading the view.
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
