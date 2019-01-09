//
//  ViewController.swift
//  Downloading images from web
//
//  Created by Kanav Bhatia on 08/04/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageD: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //to restore the saved data
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) // 1 search for local directories, 2 user local location, 3 link to home directory
        
        if documentsPath.count > 0
        {
            let documentDirectory = documentsPath[0]
            
            let restorePath = documentDirectory + "/image.jpg"
            
            imageD.image = UIImage(contentsOfFile: restorePath)
            
            
            
        }
        
     // line 31-50 used for downloading image
        
   /*     let url = URL(string: "https://pbs.twimg.com/profile_images/622303609024176128/6vy6hwO0.jpg")!
        
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil{
                print(error)
            }
            else
            { // convert url to image
                if let data = data{
                    
                    if let myImage = UIImage(data: data)
                    {
                    self.imageD.image = myImage
                        
                        // to save image to local device
                        
                        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) // 1 search for local directories, 2 user local location, 3 link to home directory
                        
                        if documentsPath.count > 0
                        {
                          let documentDirectory = documentsPath[0]
                                
                                let savePath = documentDirectory + "/image.jpg"
                                do{
                                          try UIImageJPEGRepresentation(myImage, 1)?.write(to: URL(fileURLWithPath: savePath))
                                }
                                catch{
                                    //if unsuccessful
                                }
                                
                                }
                        
                }
                
                }
            }
            
        }
        task.resume()
    
    */
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

