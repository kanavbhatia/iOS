//
//  ViewController.swift
//  Egg Timer
//
//  Created by Kanav Bhatia on 19/03/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    var time = 210
    
    @IBOutlet weak var timerLabel: UILabel!
    @objc func processTimer()
    {
        
        if (time > 0)
        {
            time = time-1
            timerLabel.text = String(time)
            
        }
        else{
              timer.invalidate()
        }
        
        
    }
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        
    }
    
  

    
    
    @IBAction func inc10(_ sender: Any) {
        
        time = time + 10
        timerLabel.text = String(time)
    }
    @IBAction func reSet(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    
    @IBAction func dec10(_ sender: Any) {
        time = time - 10
        timerLabel.text = String(time)
        if (time < 10)
        {
            time = 0
            
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

