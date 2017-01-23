//
//  ViewController.swift
//  ExampleTestSoftware
//
//  Created by Andrew Diniz da Costa on 26/09/16.
//  Copyright © 2016 LES PUC-Rio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sum(number1: Float, number2: Float) -> Float{
        return number1 + number2
    }

    @IBAction func btOkAction(_ sender: AnyObject) {
        
        let value = Int.init(lblNumber.text!)! + 2
        
        lblNumber.text = String.init(value)
        
    }

}

