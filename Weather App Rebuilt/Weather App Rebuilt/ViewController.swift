//
//  ViewController.swift
//  Weather App Rebuilt
//
//  Created by Kanav Bhatia on 09/04/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherReport: UILabel!
    
    @IBOutlet weak var cityText: UITextField!
    
    @IBAction func searchButton(_ sender: Any) {
        
      if  let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=" + cityText.text!.replacingOccurrences(of: " ", with: "%20") + "&appid=eb984c5e2638064758b6c9a7a9900ab8")
      {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil
            {
                print(error!)
            }
            else{
                
                if let urlContent = data {
                    do
                    {
                        let jsonResult =  try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        let description = ((jsonResult["weather"] as? NSArray)?[0] as? NSDictionary)?["description"] as? String
                        DispatchQueue.main.async {
                        
                        self.weatherReport.text = description
                        
                        }
                    }
                    catch{
                        
                        print("json serialisation failed")
                        
                    }
                }
            }
        }
        task.resume()
    }
      else {
        self.weatherReport.text = " COUDN'T FIND THE WEATHER"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

