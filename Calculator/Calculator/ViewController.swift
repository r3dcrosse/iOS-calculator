//
//  ViewController.swift
//  Calculator
//
//  Created by David Wayman on 9/16/15.
//  Copyright (c) 2015 David Wayman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calcScreenNum: Int = 0, numInMem: Int = 0, num1: Int = 0, num2: Int = 0
    var functionToDo: String = "", lastButtonPressed: String = ""
    var isEqualSignPressed: Bool = false
    
    @IBOutlet weak var outputScreen: UITextField!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusSignButton: UIButton!
    @IBOutlet weak var minusSignButton: UIButton!
    @IBOutlet weak var equalSignButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func oneButtonPressed(sender: AnyObject) {
        
        if lastButtonPressed >= "0" && lastButtonPressed <= "9" {
            numInMem *= 10
            numInMem++
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        } else {
            numInMem = 0
            numInMem++
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        }
        
        lastButtonPressed = "1"
    }
    
    @IBAction func twoButtonPressed(sender: AnyObject) {

        if lastButtonPressed >= "0" && lastButtonPressed <= "9" {
            numInMem *= 10
            numInMem += 2
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        } else {
            numInMem = 0
            numInMem += 2
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        }
        
        lastButtonPressed = "2"
    }
    
    @IBAction func threeButtonPressed(sender: AnyObject) {
        
        if lastButtonPressed >= "0" && lastButtonPressed <= "9" {
            numInMem *= 10
            numInMem += 3
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        } else {
            numInMem = 0
            numInMem += 3
            calcScreenNum = numInMem
            outputScreen.text = "\(calcScreenNum)"
        }
        
        lastButtonPressed = "3"
    }
    
    
    @IBAction func clearButtonPressed(sender: AnyObject) {
        // SET ALL VARIABLES TO DEFAULTS!!!!!!!!!!!!!!!!!!
        num1 = 0
        num2 = 0
        calcScreenNum = 0
        numInMem = 0
        functionToDo = ""
        lastButtonPressed = ""
        outputScreen.text = "\(calcScreenNum)"
    }
    @IBAction func plusSignButtonPressed(sender: AnyObject) {
        num1 = calcScreenNum
        calcScreenNum = 0
        numInMem = 0
        functionToDo = "add"
    }
    @IBAction func minusSignButtonPressed(sender: AnyObject) {
        num1 = calcScreenNum
        calcScreenNum = 0
        numInMem = 0
        functionToDo = "subtract"
    }

    @IBAction func equalSignButtonPressed(sender: AnyObject) {
        switch functionToDo {
        case "add":
            num1 += numInMem
            calcScreenNum = num1
            outputScreen.text = "\(calcScreenNum)"
        case "subtract":
            num1 -= numInMem
            calcScreenNum = num1
            outputScreen.text = "\(calcScreenNum)"
        default:
            assert(false, "unidentified button")
        }
        
        lastButtonPressed = "="
    }
}

