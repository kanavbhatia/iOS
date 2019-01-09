//
//  ViewController.swift
//  Cat Year
//
//  Created by Kanav Bhatia on 13/03/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inAge: UITextField!
    
    @IBOutlet weak var ageDisp: UILabel!
    
    @IBAction func ageCalcButton(_ sender: Any) {
        
        if let age = inAge.text
        {
            if let ageInt = Int(age)
            {
            let ageofCat = ageInt * 7
            
        ageDisp.text = "Your cat is " + String(ageofCat) + " years old"
            }
    }
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

