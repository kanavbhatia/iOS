//
//  ViewController.swift
//  tictactoe1
//
//  Created by Kanav Bhatia on 26/03/18.
//  Copyright © 2018 Bhatia co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerPlayer: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func reset(_ sender: Any) {
        
        gamePosition = [0,0,0,0,0,0,0,0,0]
        
        playerActive = 1
        
        activeGame = true
        
        winnerPlayer.isHidden = true
        resetButton.isHidden = true
        
        self.winnerPlayer.center = CGPoint(x:self.winnerPlayer.center.x-500 , y:self.winnerPlayer.center.y)
        self.resetButton.center = CGPoint(x:self.resetButton.center.x-500 , y:self.resetButton.center.y)
        
    }
    
    var playerActive = 1
    
    var gamePosition = [0,0,0,0,0,0,0,0,0]
    
    let winningPosition =  [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
   var activeGame = true
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
         print(sender.tag)
        
        let playerPosition = sender.tag - 1
        
       if gamePosition[playerPosition] == 0 && activeGame
       {
        if playerActive == 1
        {
       
        sender.setImage(UIImage(named: "nought.png"), for: [])
            
        gamePosition[playerPosition] = 1
            
            playerActive = 2
            
        
        }
        else
        {
            sender.setImage(UIImage(named: "cross.png"), for: [])
            
            gamePosition[playerPosition] = 2
            
            playerActive = 1
        }
        }
        else
       {
        print("Invalid Position")
        }
        for combination in winningPosition
        {
        if   ( gamePosition[combination[0]] != 0 && gamePosition[combination[0]] == gamePosition[combination[1]] && gamePosition[combination[1]] == gamePosition[combination[2]])
        {
            activeGame = false
            
            winnerPlayer.isHidden = false
            resetButton.isHidden = false
            
            if gamePosition[combination[0]] == 1 {
                
                winnerPlayer.text = "Nought has won!"
                
            } else if gamePosition[combination[0]] == 2{
                
                winnerPlayer.text = "Crosses has won!"
                
            }
            else
            {
                winnerPlayer.text = "Match Tied"
            }
            
            
            UIView.animate(withDuration: 1, animations: {
                
                self.resetButton.center = CGPoint(x:self.resetButton.center.x+500 , y:self.resetButton.center.y)
                self.winnerPlayer.center = CGPoint(x:self.winnerPlayer.center.x+500 , y:self.winnerPlayer.center.y)
                })
            
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       winnerPlayer.isHidden = true
        resetButton.isHidden = true
    
        self.winnerPlayer.center = CGPoint(x:self.winnerPlayer.center.x-500 , y:self.winnerPlayer.center.y)
        self.resetButton.center = CGPoint(x:self.resetButton.center.x-500 , y:self.resetButton.center.y)
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

