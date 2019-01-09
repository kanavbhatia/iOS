//
//  ViewController.swift
//  Audio Player
//
//  Created by Kanav Bhatia on 01/04/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func play(_ sender: Any) {
        player.play()
        
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func slide(_ sender: Any) {
        player.volume = sliderMove.value
    }
    @IBOutlet weak var sliderMove: UISlider!
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "Attention", ofType: "mp3")
       do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            player.play()
        }
        catch
        {
            //process any errors
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

