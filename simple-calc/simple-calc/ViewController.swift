//
//  ViewController.swift
//  simple-calc
//
//  Created by iGuest on 4/19/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    // MARK: Properties
//    @IBOutlet var display : UILabel!
//    
//    var inputOccurring = false
//    
//    @IBAction func inputNumber (sender: UIButton) {
//        let input = sender.currentTitle!
//        
//        if inputOccurring {
//            display.text = display.text! + input
//        } else {
//            display.text = input
//            
//            inputOccurring = true
//        }
//    }
//    
//    var operators = Array<Double>()
//    
//    @IBAction func enter() {
//        inputOccurring = false
//        
//        operators.append(displayThis)
//    }
//    
//    var displayThis : Double {
//        get {
//            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
//        } set {
//            display.text = "\(newValue)"
//            inputOccurring = false
//        }
//        
//    }
//    
//    @IBAction func doMath (sender: UIButton) {
//        let operation = sender.currentTitle!
//        
//        if inputOccurring{
//            enter()
//        }
//        
//        switch operation {
//        case "+" : getNum {$0 + $1}
//        case "-" : getNum {$0 - $1}
//        case "*" : getNum {$0 * $1}
//        case "/" : getNum {$0 / $1}
//        case "%" : getNum {$0 % $1}
//        case "COUNT" :
//        case "AVG" :
//        case "FACT" : getNum {Double(factorial(Double($0)))}
//        default :
//            print("Not a valid operator")
//        }
//    }
//    
//    func add(left : Double, right : Double) -> Double {
//        return left + right
//    }
//    
//    func minus(left : Double, right : Double) -> Double {
//        return left - right
//    }
//    
//    func times(left : Double, right : Double) -> Double {
//        return left * right
//    }
//    
//    func div(left : Double, right : Double) -> Double {
//        return left / right
//    }
//    
//    func mod(left : Double, right : Double) -> Double {
//        return left % right
//    }
//    
//    func getNum (operation: (Double, Double) -> Double) {
//        if operators.count >= 2 {
//            displayThis = operation (operators.removeLast(), operators.removeLast())
//        }
//        
//    }
//    
//
//    func getNum (operation: Double -> Double) {
//        if operators.count >= 1 {
//            displayThis = operation (operators.removeLast())
//        }
//        
//    }
//    
//    
    var eval = 0;
    
    // Store Numbers in an array
    let StoreNumbersModel : StoreNumbers = StoreNumbers()
    
    @IBOutlet weak var EvaluatedResults: UILabel!
    
    
    @IBAction func PressedZero(sender: UIButton) {
        EvaluatedResults.text = "0"
        StoreNumbersModel.elements.append(0)
    }
    
    @IBAction func PressedOne(sender: UIButton) {
        EvaluatedResults.text = "1"
        StoreNumbersModel.elements.append(1)
    }
    
    @IBAction func PressedTwo(sender: UIButton) {
        EvaluatedResults.text = "2"
        StoreNumbersModel.elements.append(2)
    }
    
    @IBAction func PressedThree(sender: UIButton) {
        EvaluatedResults.text = "3"
        StoreNumbersModel.elements.append(3)
    }
    
    @IBAction func PressedFour(sender: UIButton) {
        EvaluatedResults.text = "4"
        StoreNumbersModel.elements.append(4)
    }
    
    @IBAction func PressedFive(sender: UIButton) {
        EvaluatedResults.text = "5"
        StoreNumbersModel.elements.append(5)
    }
    
    @IBAction func PressedSix(sender: UIButton) {
        EvaluatedResults.text = "6"
        StoreNumbersModel.elements.append(6)
    }
    
    @IBAction func PressedSeven(sender: UIButton) {
        EvaluatedResults.text = "7"
        StoreNumbersModel.elements.append(7)
    }
    
    @IBAction func PressedEight(sender: UIButton) {
        EvaluatedResults.text = "8"
        StoreNumbersModel.elements.append(8)
    }
    
    @IBAction func PressedNine(sender: UIButton) {
        EvaluatedResults.text = "9"
        StoreNumbersModel.elements.append(9)
    }
    
    let StoreOperationsModel : StoreOperations = StoreOperations()
    
    // Preform basic operations
    @IBAction func Add(sender: UIButton) {
        EvaluatedResults.text = "+"
        StoreOperationsModel.operands.append("+")
    }
    
    @IBAction func Minus(sender: UIButton) {
        EvaluatedResults.text = "-"
        StoreOperationsModel.operands.append("-")
    }
    
    @IBAction func Times(sender: UIButton) {
        EvaluatedResults.text = "*"
        StoreOperationsModel.operands.append("*")
    }
    
    @IBAction func Div(sender: UIButton) {
        EvaluatedResults.text = "/"
        StoreOperationsModel.operands.append("/")
    }
    
    @IBAction func Mod(sender: UIButton) {
        EvaluatedResults.text = "%"
        StoreOperationsModel.operands.append("%")
    }
    
    // Preform advanced operations
    @IBAction func Count(sender: UIButton) {
        EvaluatedResults.text = "count"
        StoreOperationsModel.operands.append("count")
    }
    
    @IBAction func Avg(sender: UIButton) {
        EvaluatedResults.text = "avg"
        StoreOperationsModel.operands.append("avg")
    }
    
    @IBAction func Fact(sender: UIButton) {
        EvaluatedResults.text = "fact"
        StoreOperationsModel.operands.append("fact")
    }

    // Preform Equals
    @IBAction func Equals(sender: UIButton) {
        // Factorial Helper Function
        func factorial(x: Int) -> Int {
            if x == 1 {
                return 1
            } else {
                return (x * (factorial(x - 1)))
            }
        }
        
        // Evaluate user-input after checking if it's valid.
        var i = 0
        let elemSize = StoreNumbersModel.elements.count
        let operSize = StoreOperationsModel.operands.count
        var operCheck = ""
        
        
        if ((elemSize - operSize == 1) || (elemSize == 1 && operSize == 1 && StoreOperationsModel.operands[0] == "fact")) {
            let firstInput = StoreNumbersModel.elements.removeAtIndex(0)
            eval += firstInput
            
            let operation = StoreOperationsModel.operands[0]
            if operation == "fact" {
                operCheck = "fact"
            }
            while (!StoreNumbersModel.elements.isEmpty && !StoreOperationsModel.operands.isEmpty) {
                let operation = StoreOperationsModel.operands.removeAtIndex(0)

                var next = 0
            
                if !StoreNumbersModel.elements.isEmpty {
                    next = StoreNumbersModel.elements.removeAtIndex(0)
                } else {
                    break
                }
                
                if operation == "+" {
                    eval = eval + next
                } else if operation == "-" {
                    eval = eval - next
                } else if operation == "*" {
                    eval = eval * next
                } else if operation == "/" {
                    eval = eval / next
                } else if operation == "%" {
                    eval = eval % next
                } else if operation == "count" {
                    operCheck = "count"
                    eval = eval + 1
                } else if operation == "avg" {
                    eval = eval + next
                    if StoreOperationsModel.operands.isEmpty {
                        eval = eval / elemSize
                    }
                }
            
                i = i + 1
            
            }
            
            if operCheck == "fact" {
                eval = factorial(firstInput)
                EvaluatedResults.text = "THIS IS: \(eval)"
            }
            
            if operCheck == "count" {
                eval -= (firstInput - 1)
            }
            
        } else {
            EvaluatedResults.text = "Improper input!"
        }
    
        // Set eval as output to be displayed.
        EvaluatedResults.text = "Result: \(eval)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

