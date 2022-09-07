//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Infinity Code on 9/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String? {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
   
    mutating func calculateBMI(height: Float, weight: Float) {
        let inc = height * 12
        let bmiValue = 703 * weight / pow(inc, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies 🥧, you are underweight ", color: UIColor.blue )
        } else if bmiValue < 24.9 {
            print("normal weight")
            bmi = BMI(value: bmiValue, advice: "You within normal ⚖️ weight, keep fit 💪", color: UIColor.systemGreen )
        } else {
            print("overweight")
            bmi = BMI(value: bmiValue, advice: "You'r a 🐷, you are overweight", color: UIColor.systemPink )
            
        }

    }
}
