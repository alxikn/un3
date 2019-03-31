//
//  ViewController.swift
//  calculadora
//
//  Created by LABMAC24 on 22/02/19.
//  Copyright © 2019 LABMAC24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laNumberShow : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var newOperation=true
    
    func addNumberToInput(number:String){
        var textNumber = String( laNumberShow.text!)
        if newOperation == true{
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        laNumberShow.text = textNumber
        
    }

    @IBAction func buo(_ sender: Any) {
        addNumberToInput(number: "0")
    }
    
    @IBAction func buodot(_ sender: Any) {
        addNumberToInput(number: ".")
    }
    
    @IBAction func bu1(_ sender: Any) {
        addNumberToInput(number: "1")
    }
    
    @IBAction func bu2(_ sender: Any) {
        addNumberToInput(number: "2")
    }
    
    @IBAction func bu3(_ sender: Any) {
        addNumberToInput(number: "3")
    }
    @IBAction func bu4(_ sender: Any) {
        addNumberToInput(number: "4")
    }
    
    @IBAction func bu5(_ sender: Any) {
        addNumberToInput(number: "5")
    }
    
    @IBAction func bu6(_ sender: Any) {
        addNumberToInput(number: "6")
    }
    
    @IBAction func bu7(_ sender: Any) {
        addNumberToInput(number: "7")
    }
    @IBAction func bu8(_ sender: Any) {
        addNumberToInput(number: "8")
    }
    @IBAction func bu9(_ sender: Any) {
        addNumberToInput(number: "9")
    }
    var op = "+"
    var number1:Double?
    @IBAction func buMul(_ sender: Any) {
        op = "*"
        number1 = Double( laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buAdd(_ sender: Any) {
        op = "+"
        number1 = Double( laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double( laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number1 = Double( laNumberShow.text!)
        newOperation = true
    }
    
    
    @IBAction func buAc(_ sender: Any) {
        laNumberShow.text = "0"
        newOperation = true
        
    }
    
    @IBAction func buMinues(_ sender: Any) {
        var textNumber = String( laNumberShow.text!)
        
        textNumber = "-" + textNumber
        laNumberShow.text = textNumber
    }
    
    @IBAction func buPercent(_ sender: Any) {
        
        var number1 = Double( laNumberShow.text!)
        number1 = number1!/100.0
        laNumberShow.text = String(number1!)
        newOperation = true
    }
    
   
    @IBAction func buEqual(_ sender: Any){
        let number2 = Double( laNumberShow.text!)
        var results:Double?
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
            
        default:
            results = 0.0
        }
        laNumberShow.text = String(results!)
        newOperation = true
    }
    
}

