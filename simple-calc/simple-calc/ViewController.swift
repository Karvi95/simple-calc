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
    }
    @IBAction func Minus(sender: UIButton) {
    }
    @IBAction func Times(sender: UIButton) {
    }
    @IBAction func Div(sender: UIButton) {
    }
    @IBAction func Mod(sender: UIButton) {
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

