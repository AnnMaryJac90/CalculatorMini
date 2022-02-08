//
//  ViewController.swift
//  CalculatorMini
//
//  Created by Anil Thomas on 2/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberOneText: UITextField!
    
    
    @IBOutlet weak var numberTwoText: UITextField!
    
    
    @IBOutlet weak var resultText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addPressed(_ sender: UIButton) {
        operation(with: "+")
    }
    
    
    @IBAction func subPressed(_ sender: UIButton) {
        operation(with: "-")
    }
    
    
    @IBAction func multiPressed(_ sender: UIButton) {
        operation(with: "*")
    }
    

    @IBAction func divPressed(_ sender: UIButton) {
        operation(with: "/")
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        numberOneText.text = " "
        numberTwoText.text = " "
        resultText.text = " "

    }
    
    
    
    func operation(with symbol:String){
        if let number1 = Double(numberOneText.text!) , let number2 = Double(numberTwoText.text!){
            switch symbol {
            case "+":
                resultText.text = String(format: "%.2f", number1+number2)
            case "-":
                resultText.text = String(format: "%.2f", number1-number2)
            case "*":
                resultText.text = String(format: "%.2f", number1*number2)
            case "/":
                resultText.text = String(format: "%.2f", number1/number2)
            default:
                resultText.text = "Something wentt wrong"
                
            }
        }
        else {
            let alert = UIAlertController(title: "ALERT", message: "Missing Input", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
           
        }
    }
}

