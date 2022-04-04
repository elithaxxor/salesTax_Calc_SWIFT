//
//  ViewController.swift
//  SalesTax
//
//  Created by a-robot on 4/3/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sales_tax: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var calc_button: UIButton!
    @IBOutlet weak var pricelbl: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pricelbl.text = "" // reseets the uibutton
        
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any){
        let price = Double(price.text!)! // [text input]
        let salesTax = Double(sales_tax.text!)! // [text input]
        
        let totalSalesTax = price * salesTax
        let total = price + totalSalesTax
        pricelbl.text = "$\(total)" // Converts Double back to string
        
        
        
    }


}

