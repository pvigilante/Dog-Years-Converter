//
//  ViewController.swift
//  DogYears
//
//  Created by Peter on 2014-10-21.
//  Copyright (c) 2014 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsPressed(sender: UIButton) {
        
        var dogYearsDouble = Double((humanYearTextField.text as NSString).doubleValue)
        var humanYearMultiplier:Double
        var removeYears:Double
        var finalYears:Double
        if dogYearsDouble <= 2.0 {
            humanYearMultiplier = 10.5
            removeYears = 0.0
            finalYears = dogYearsDouble * humanYearMultiplier
        } else {
            dogYearsDouble -= 2.0
            humanYearMultiplier = 4
            finalYears = (dogYearsDouble * humanYearMultiplier) + 21
        }
        
        dogYearsLabel.text = "\(finalYears)"
        
        //Close keyboard
        humanYearTextField.resignFirstResponder()
        
    }

}

