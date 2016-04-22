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
    var index = 0
    var display = ""
    
    // Store Numbers in an array
    let StoreNumbersModel : StoreNumbers = StoreNumbers()
    
    @IBOutlet weak var EvaluatedResults: UILabel!
    
    
    @IBAction func PressedZero(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "0"
        } else {
            StoreNumbersModel.elements.append("0")
        }
        display += "0"
        EvaluatedResults.text = display

    }
    
    @IBAction func PressedOne(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "1"
        } else {
            StoreNumbersModel.elements.append("1")
        }
        display += "1"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedTwo(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "2"
        } else {
            StoreNumbersModel.elements.append("2")
        }
        display += "2"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedThree(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "3"
        } else {
            StoreNumbersModel.elements.append("3")
        }
        display += "3"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedFour(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "4"
        } else {
            StoreNumbersModel.elements.append("4")
        }
        display += "4"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedFive(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "5"
        } else {
            StoreNumbersModel.elements.append("5")
        }
        display += "5"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedSix(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "6"
        } else {
            StoreNumbersModel.elements.append("6")
        }
        display += "6"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedSeven(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "7"
        } else {
            StoreNumbersModel.elements.append("7")
        }
        display += "7"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedEight(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "8"
        } else {
            StoreNumbersModel.elements.append("8")
        }
        display += "8"
        EvaluatedResults.text = display
    }
    
    @IBAction func PressedNine(sender: UIButton) {
        if(StoreNumbersModel.elements.count > index) {
            StoreNumbersModel.elements[index] += "9"
        } else {
            StoreNumbersModel.elements.append("9")
        }
        display += "9"
        EvaluatedResults.text = display
    }
    
    let StoreOperationsModel : StoreOperations = StoreOperations()
    
    // Preform basic operations
    @IBAction func Add(sender: UIButton) {
        EvaluatedResults.text = "+"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("+")
        
    }
    
    @IBAction func Minus(sender: UIButton) {
        EvaluatedResults.text = "-"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("-")
    }
    
    @IBAction func Times(sender: UIButton) {
        EvaluatedResults.text = "*"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("*")
    }
    
    @IBAction func Div(sender: UIButton) {
        EvaluatedResults.text = "/"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("/")
    }
    
    @IBAction func Mod(sender: UIButton) {
        EvaluatedResults.text = "%"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("%")
    }
    
    // Preform advanced operations
    @IBAction func Count(sender: UIButton) {
        EvaluatedResults.text = "count"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("count")
    }
    
    @IBAction func Avg(sender: UIButton) {
        EvaluatedResults.text = "avg"
        display = ""
        index = index + 1
        StoreOperationsModel.operands.append("avg")
    }
    
    @IBAction func Fact(sender: UIButton) {
        EvaluatedResults.text = "fact"
        display = ""
        index = index + 1
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
            eval += Int(firstInput)!
            
            let operation = StoreOperationsModel.operands[0]
            if operation == "fact" {
                operCheck = "fact"
            }
            while (!StoreNumbersModel.elements.isEmpty && !StoreOperationsModel.operands.isEmpty) {
                let operation = StoreOperationsModel.operands.removeAtIndex(0)

                var next = 0
            
                if !StoreNumbersModel.elements.isEmpty {
                    next = Int(StoreNumbersModel.elements.removeAtIndex(0))!
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
                eval = factorial(Int(firstInput)!)
            }
            
            if operCheck == "count" {
                eval -= (Int(firstInput)! - 1)
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

