//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Odinachi David on 01/09/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
   
    
    mutating func getBmi(heightRef: Float, weightRef: Float) -> Bmi? {
        let height = heightRef
         let weight = weightRef
        
        let bmi = weight / (height * height)
        
        return Bmi(value:String(format: "%.1f", bmi), color: (bmi < 18.5 ) ? .red : (bmi < 24.5 ) ? .blue : .green, valueText: (bmi < 18.5 ) ? "Underweight" : (bmi < 24.5 ) ? "Normal Weight" : "Over Weight" )
        
    
    }
}
