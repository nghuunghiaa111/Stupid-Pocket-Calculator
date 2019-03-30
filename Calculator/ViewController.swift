//
//  ViewController.swift
//  Calculator
//
//  Created by Huu Nghia Nguyen on 3/28/19.
//  Copyright © 2019 Huu Nghia Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    var result = 0
    var firstNumber = 0
    var check = 0
    var check2 = 0
    var math = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        screen.text = "0"
        
    }
    
    func process(_ math:String) {
        if check2 == 0 {
            if math == "+" {
                result = firstNumber + Int(screen.text!)!
                screen.text = String(result)
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                check = 1
            }
            else if math == "-" {
                if Int(screen.text!)! <= 0 {
                    result = firstNumber + Int(screen.text!)!
                } else {
                    result = firstNumber - Int(screen.text!)!
                }
                screen.text = String(result)
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                check = 1
            }
            else if math == "*" {
                result = firstNumber * Int(screen.text!)!
                screen.text = String(result)
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                check = 1
            }
            else if math == "/" {
                if firstNumber == 0 {
                    firstNumber = 1
                }
//                else if firstNumber % 2 != 0 {
//                    result = firstNumber / Int(screen.text!)!
//                }
                result = firstNumber / Int(screen.text!)!
                screen.text = String(result)
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                check = 1
            }
            else {
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                firstNumber = Int(screen.text!)!
                screen.text = String(firstNumber)
                check = 1
            }
        }
    }

    @IBAction func button1(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "1"
        check2 = 0
//        if math == "=" {
//             firstNumber = 0
//        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "2"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "3"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "4"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button5(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "5"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button6(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "6"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button7(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "7"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button8(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "8"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button9(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "9"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func button0(_ sender: Any) {
        if (screen.text == "0" || check == 1) {
            screen.text = ""
            check = 0
        }
        screen.text = screen.text! + "0"
        check2 = 0
//        if math == "=" {
//            firstNumber = 0
//        }
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        screen.text = "0"
        result = 0
        firstNumber = 0
        math = ""
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        process(math)
        math = "+"
        check2 += 1
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        process(math)
        math = "-"
        check2 += 1
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        process(math)
        math = "*"
        check2 += 1
    }
    
    @IBAction func buttonDivision(_ sender: Any) {
        process(math)
        math = "/"
        check2 += 1
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        process(math)
        check = 1
        check2 += 1
        math = "="
    }
}

