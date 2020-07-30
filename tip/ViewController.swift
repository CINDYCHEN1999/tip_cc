//
//  ViewController.swift
//  tip
//
//  Created by Cindy on 7/22/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calc(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let switchArr = [0.1, 0.15, 0.18, 0.2]
        let tip = bill * switchArr[tipControl.selectedSegmentIndex]
        if bill > 100000000000{
            print("too expensive!")
            return
        }
        let total = bill + tip
        
        tipLable.text = String(format: "$%.2f", tip)
        totalLable.text = String(format: "$%.2f", total)
    }
}

