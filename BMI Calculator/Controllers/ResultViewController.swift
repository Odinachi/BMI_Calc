//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Odinachi David on 01/09/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:Bmi?

    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.text = bmiValue?.value ?? "0.0"
        view.backgroundColor = bmiValue?.color ?? .blue
        weightText.text = bmiValue?.valueText
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBOutlet var resultText: UILabel!
    
    @IBOutlet var weightText: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
