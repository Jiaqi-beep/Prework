//
//  ViewController.swift
//  Prework
//
//  Created by Jiaqi Li on 12/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var amountPerPerson: UILabel!
    @IBOutlet weak var partySize: UIStepper!
    @IBOutlet weak var partySizeLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let per = total / partySize.value
        let formattedPer = String(format: "%.2f", per)
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        amountPerPerson.text = String("$\(formattedPer) Per Person")
        partySizeLabel.text = String(Int(partySize.value))
    }
    
    
}

