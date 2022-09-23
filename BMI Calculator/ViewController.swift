//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ashikur Rahman on 23/09/2022.
//  Copyright © 2022 Ashikur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var txtHeight: UITextField!
    
    @IBOutlet weak var txtWeight: UITextField!
    
    
    @IBOutlet weak var txtShowBmi: UITextView!
    
    @IBOutlet weak var txtShowComment: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func btnBmi(_ sender: Any) {
        let heightInDouble = Double(txtHeight.text!)
        let heightInMeter = heightInDouble! * 0.3048
        let weightDouble = Double(txtWeight.text!)
    
        
        let bmi = weightDouble! / (heightInMeter * heightInMeter)
        txtShowBmi.text = "BMI: " + String(bmi)
        
        if(bmi < 19){
            txtShowComment.text = "You are in underweight. Please eat healthy food more."
        }
        else if(bmi > 19 && bmi < 26){
            txtShowComment.text = "Very Good!! Your BMI is Normal"
        }
        else if(bmi > 26 && bmi < 31){
            txtShowComment.text = "You are overweight. Plase follow healthy diet befor it's late."
        }
        else{
            txtShowComment.text = "OBESITY !!!. Please consult a doctor to lose weight"
        }
    }
    

}

