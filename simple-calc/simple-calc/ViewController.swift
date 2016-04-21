//
//  ViewController.swift
//  simple-calc
//
//  Created by iGuest on 4/19/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    
    var eval = 0;
    
    // Store Numbers in an array
    let StoreNumbersModel : StoreNumbers = StoreNumbers()
    
    @IBAction func PressedZero(sender: UIButton) {
        StoreNumbersModel.elements.append(0)
    }
    
    @IBAction func PressedOne(sender: UIButton) {
        StoreNumbersModel.elements.append(1)
    }
    
    @IBAction func PressedTwo(sender: UIButton) {
        StoreNumbersModel.elements.append(2)
    }
    
    @IBAction func PressedThree(sender: UIButton) {
        StoreNumbersModel.elements.append(3)
    }
    
    @IBAction func PressedFour(sender: UIButton) {
        StoreNumbersModel.elements.append(4)
    }
    
    @IBAction func PressedFive(sender: UIButton) {
        StoreNumbersModel.elements.append(5)
    }
    
    @IBAction func PressedSix(sender: UIButton) {
        StoreNumbersModel.elements.append(6)
    }
    
    @IBAction func PressedSeven(sender: UIButton) {
        StoreNumbersModel.elements.append(7)
    }
    
    @IBAction func PressedEight(sender: UIButton) {
        StoreNumbersModel.elements.append(8)
    }
    
    @IBAction func PressedNine(sender: UIButton) {
        StoreNumbersModel.elements.append(9)
    }
    
    let StoreOperationsModel : StoreOperations = StoreOperations()
    
    // Preform basic operations
    @IBAction func Add(sender: UIButton) {
        StoreOperationsModel.operands.append("+")
    }
    
    @IBAction func Minus(sender: UIButton) {
        StoreOperationsModel.operands.append("-")
    }
    
    @IBAction func Times(sender: UIButton) {
        StoreOperationsModel.operands.append("*")
    }
    
    @IBAction func Div(sender: UIButton) {
        StoreOperationsModel.operands.append("/")
    }
    
    @IBAction func Mod(sender: UIButton) {
        StoreOperationsModel.operands.append("%")
    }
    
    // Preform advanced operations
    @IBAction func Count(sender: UIButton) {
        StoreOperationsModel.operands.append("count")
    }
    
    @IBAction func Avg(sender: UIButton) {
        StoreOperationsModel.operands.append("avg")
    }
    
    @IBAction func Fact(sender: UIButton) {
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
            
            while (!StoreNumbersModel.elements.isEmpty && !StoreOperationsModel.operands.isEmpty) {
                let operation = StoreOperationsModel.operands.removeAtIndex(i)
                var next = 0
            
                if !StoreNumbersModel.elements.isEmpty {
                    next = StoreNumbersModel.elements.removeAtIndex(i + 1)
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
                } else if operation == "fact" {
                    eval = factorial(Int(eval))
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
            if operCheck == "count" {
                eval -= (firstInput - 1)
            }
            
        } else {
            NSLog("Improper input")
        }
    
        // Set eval as output to be displayed.

        
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

