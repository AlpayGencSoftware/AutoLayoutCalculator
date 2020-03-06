//
//  ViewController.swift
//  AutoLayoutCalculator
//
//  Created by Alpay Genc on 20.01.2019.
//  Copyright © 2019 Liberty App Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var numberOnScreen:Double = 0
    var previusNumber:Double = 0
    var  proformingMath = false
    var operation = 0

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if proformingMath == true {
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            proformingMath = false
        } else {
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
        }
        
        
        
        
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previusNumber = Double(label.text!)!
            
            if sender.tag == 12 // Divide
            {
                label.text = "/"
            } else if sender.tag == 13  { // Multply
                label.text = "*"
                
            } else if sender.tag == 14 // Minus
            {
                label.text = "-"
                
            } else if sender.tag == 15 // Plus
            {
                
                label.text = "+"
            }
            
            operation = sender.tag
            proformingMath = true
        }
        else if sender.tag == 16 {
            if operation == 12 {
                 label.text = String(previusNumber / numberOnScreen)
                
            } else if operation == 13 {
                
                 label.text = String(previusNumber * numberOnScreen)
            }
            
          else if operation == 14
            {
                
                 label.text = String(previusNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(previusNumber + numberOnScreen)
    
            }
            
        }
        
        else if sender.tag == 11
        {
            
            label.text = ""
            previusNumber = 0
            numberOnScreen = 0
             operation = 0
        }
        
    }
    
  }

