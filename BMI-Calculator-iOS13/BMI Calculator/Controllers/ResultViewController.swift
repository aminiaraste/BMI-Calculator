//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Hadis amini on 8/23/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class  ResultViewController:UIViewController {
    var bmivalue:String?
    var advice :String?
    var color : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
     
     
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
