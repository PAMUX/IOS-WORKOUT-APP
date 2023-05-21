//
//  SheduleViewController.swift
//  Gym-Work-out
//
//  Created by Maleesha Wijeratne on 21/05/2023.
//

import UIKit

class SheduleViewController: UIViewController {

    @IBOutlet weak var PlusButton_1: UIButton!
    
    @IBOutlet weak var MinusButton_1: UIButton!
    
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var TextField_1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bitnClick_1(_ sender: UIButton) {
        incrementTextField()
    }
    
    
    @IBAction func bitnClick_1M(_ sender: UIButton) {
        decrementTextField()
    }
    
    
    @IBAction func plus_2(_ sender: Any) {
        incrementTextField2()
    }
    
    
    @IBAction func mins_2(_ sender: Any) {
        decrementTextField2()
    }
    
    
    
    
    
    @IBAction func submitClick(_ sender: UIButton) {
        let alert = UIAlertController(title: "Schedule created successfully", message: "Push up: " + (TextField_1.text ?? "")+"\n" + "Dumbbell Chest: " + (text2.text ?? ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)

        
    }
    
    

    @IBAction func clearbtn(_ sender: UIButton) {
        text2.text = "0"
        TextField_1.text = "0"
    }
    private func incrementTextField() {
            if let currentValue = Int(TextField_1.text ?? "") {
                TextField_1.text = String(currentValue + 1)
            } else {
                TextField_1.text = "1"
            }
        }
    private func decrementTextField() {
            if let currentValue = Int(TextField_1.text ?? ""), currentValue > 0 {
                TextField_1.text = String(currentValue - 1)
            } else {
                TextField_1.text = "0"
            }
        }
    private func incrementTextField2() {
            if let currentValue = Int(text2.text ?? "") {
                text2.text = String(currentValue + 1)
            } else {
                text2.text = "1"
            }
        }
    private func decrementTextField2() {
            if let currentValue = Int(text2.text ?? ""), currentValue > 0 {
                text2.text = String(currentValue - 1)
            } else {
                text2.text = "0"
            }
        }
    
}
