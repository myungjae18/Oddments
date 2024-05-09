//
//  ViewController.swift
//  A202012025
//
//  Created by 소프트웨어컴퓨터 on 2023/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    var gender = 0;
    
    @IBAction func sControl1(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            gender = 0;
        } else {
            gender = 1;
        }
    }
    
    
    @IBAction func calcBMI(_ sender: UIButton) {
        if txtHeight.text == "" || txtWeight.text == "" {
            lblResult.textColor = .red
            lblResult.text = "키와 체중을 입력하고 실행하세요"
            return
        } else {
            let weight = Double(txtWeight.text!)!
            let height = Double(txtHeight.text!)!
            var bmi = 0.00;
            if gender == 0 {
                bmi = weight / (height*height*0.0001)
            } else {
                bmi = weight / (height*height*0.00009)
            }
             // kg/m*m
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white;
            
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "3단계 비만"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "2단계 비만"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
                body = "1단계 비만"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
                body = "정상"
            } else {
                color = UIColor(displayP3Red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
                body = "저체중"
            }
            
            print("BMI: \(shortenedBmi), 판정: \(body)")
            lblResult.backgroundColor = color
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 15
            lblResult.text = (" BMI:\(shortenedBmi), 판정:\(body)")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

