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
    }
    @IBAction func Avg(sender: UIButton) {
    }
    @IBAction func Fact(sender: UIButton) {
    }

    // Preform Equals
    @IBAction func Equals(sender: UIButton) {
        func factorial(x: Int) -> Int {
            if x == 1 {
                return 1
            } else {
                return (x * (factorial(x - 1)))
            }
        }
        
        var i = 0
//        var k = 0
        if (StoreNumbersModel.elements.count - StoreOperationsModel.operands.count <= 1) {
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
                    eval = eval + 1
                } else if operation == "avg" {
                    
                }
            
                i = i + 1
            }
        }
//        for var i = 0; i < Int(ceil(Double(StoreNumbersModel.elements.count) / 2.0)); i = i + 2 {
//            let firstInput = StoreNumbersModel.elements[i]
//            let secondInput = StoreNumbersModel.elements[i + 1]
//            let operation = StoreOperationsModel.operands.removeAtIndex(k)
//            if operation == "+" {
//                eval = firstInput + secondInput
//            } else if operation == "-" {
//                eval = firstInput - secondInput
//            } else if operation == "*" {
//                eval = firstInput * secondInput
//            } else if operation == "/" {
//                eval = firstInput / secondInput
//            } else if operation == "%" {
//                eval = firstInput % secondInput
//            }
//            k = k + 1
//        }
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

