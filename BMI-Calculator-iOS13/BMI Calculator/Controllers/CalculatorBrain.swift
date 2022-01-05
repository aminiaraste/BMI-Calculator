//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Hadis amini on 8/24/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi : BMI?
    func getBMIValue () -> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value  ??  0.0 )
        return bmiTo1DecimalPlace
    }
    
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    mutating func calculateBMI(height: Float , weight: Float) {
        let bmiValue = weight / (height * height)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice:"eat more snak", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice:"fit as afiddel !", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))

        }else{
            bmi = BMI(value: bmiValue, advice:"eat les snak!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
 
        }
    }
}

