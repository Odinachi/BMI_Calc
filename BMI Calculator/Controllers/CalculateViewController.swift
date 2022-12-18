//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calcBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var weightRef: UISlider!
    @IBOutlet var heightRef: UISlider!
    @IBOutlet var weightText: UILabel!
    @IBOutlet var heightText: UILabel!
   
    @IBAction func weightSlider(_ sender: UISlider) {
        weightText.text = "\(String(format: "%.1f", sender.value))kg"
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
       
        heightText.text = "\(String(format: "%.2f", sender.value))m"
        
    }
    @IBAction func calculateButton(_ sender: UIButton) {
    
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVc = segue.destination as! ResultViewController
        
            destinationVc.bmiValue = calcBrain.getBmi(heightRef: heightRef.value, weightRef: weightRef.value)
        }
    }
    
  
    
}
