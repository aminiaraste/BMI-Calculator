//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatBrain = CalculatorBrain()
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightSliderChanged(_ sender: UISlider) {
       let heigh=String(format: "%.2f", sender.value)
        heightLabel.text = "\(heigh)kg"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format:"%.0f",sender.value)
        weightLabel .text = "\(weight)"
    }
    @IBAction func calculatedButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatBrain.calculateBMI(height: height , weight: weight)
        self.performSegue(withIdentifier:"goToResult", sender: self)
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calculatBrain.getBMIValue()
            destinationVC.advice = calculatBrain.getAdvice()
            destinationVC.color = calculatBrain.getColor()
    }
}

}
