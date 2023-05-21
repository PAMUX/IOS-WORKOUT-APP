//
//  BMIViewController.swift
//  Gym-Work-out
//
//  Created by Maleesha Wijeratne on 19/05/2023.
//

import UIKit

class BMIViewController: UIViewController {

    
    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var heightText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    func calculateBMI(weight: Double, height: Double) -> Double {
        let bmi = weight / pow(height, 2)
        return bmi
    }
    @IBAction func clickCal(_ sender: UIButton) {
        //let weight = 70.0 // in kilograms
        
        
        if let heightText = heightText.text, let height = Double(heightText) {
            if let weightText = weightText.text, let weight = Double(weightText) {
                let bmi = calculateBMI(weight: weight, height: height)
                
                var status = ""
                
                if bmi >= 30 {
                    status = "Obesity"
                }
                else if bmi >= 25 {
                    status = "Overweight"
                }
                else if bmi >= 18 {
                    status = "Healthy Weight"
                }
                else  {
                    status = "Underweight"
                }
                
                
                
                
                
                let formattedBMI = String(format: "%.2f", bmi)
                let alert = UIAlertController(title: "Status: \(status)", message: "BMI: \(formattedBMI)", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
            }
        
       
       
        
      
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
