//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by Neil S. Patel on 10/2/19.
//  Copyright © 2019 Neil S. Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var finalWeightTextField: UITextField!
    @IBOutlet weak var requiredOnFinalTextField: UILabel!
    @IBOutlet weak var onButtonTapped: UIButton!
    @IBOutlet weak var desiredGradeSegmentController: UISegmentedControl!
    
   
        
    override func viewDidLoad() {
           super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    @IBAction func onSegmentControllerTapped(_ sender: UISegmentedControl) {
        let desiredGrade = 100.0 -
            ((Double(sender.selectedSegmentIndex) + 1.0) * 10.0)
        if let currentGrade = Double(currentGradeTextField.text!) { // if there is a number there
            if let finalWeight = Double(finalWeightTextField.text!) { // if there is a number there}
                    if finalWeight < 100 && finalWeight > 0 {  // check that final weight is valid }
                        let finalPercentage = finalWeight / 100.0 // turn wight into percentage
                        let requiredGrade = max(0, 0, (desiredGrade - (currentGrade * (1.0 - finalPercentage))) / finalPercentage) // do the math
                        requiredOnFinalTextField.text = String(format: "%.1f", requiredGrade)

                        if requiredGrade > 100 {
                            view.backgroundColor = .red
                        }
                        else {
                            view.backgroundColor = .green
                        }
                        view.endEditing(true) // removes the virtual keyboard
                    }
                }
            }
        }
    }

