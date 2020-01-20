//
//  ViewController.swift
//  Happy or Sad
//
//  Created by Jesse Zhang on 2019-11-18.
//  Copyright © 2019 Jesse Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func analyze(_ sender: Any) {
        
        guard let inputAsString = input.text, inputAsString != "" else {
            output.text = "Please enter a string with at least 1 and no more than 255 chaaracters"
            
        }
        
        if inputAsString.count > 255{
            output.text = "Please enter a string with at least 1 and no more than 255 chaaracters"
            return
            
            var sadMoodValue = 0
            var happyMoodValue = 0
            
            for scalars in inputAsString.unicodeScalars {
                let scalarValues = scalars.value
                var scalarValuesAsString = String(scalarValues)
                
                
                if scalarValuesAsString == "128522"{
                    happyMoodValue += 1
                }
                if scalarValuesAsString == "128515"{
                    happyMoodValue += 1
                }
                if scalarValuesAsString == "128516"{
                    happyMoodValue += 1
                }
                if scalarValuesAsString == "128578"{
                    happyMoodValue += 1
                }
                if scalarValuesAsString == "9785"{
                    sadMoodValue += 1
                }
                if scalarValuesAsString == "128577"{
                    sadMoodValue += 1
                }
                if scalarValuesAsString == "128533"{
                    sadMoodValue += 1
                }
                if scalarValuesAsString == "128522"{
                    sadMoodValue += 1
                }
                
                
            }
            
        }
    }
}

