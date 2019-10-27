//
//  Singleton.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/26/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import Foundation
import UIKit
//import SpriteKit

class Singleton{
    
    static let shared = Singleton()
    var int_highscores : [Int] = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,
                              1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,]
    
    var highscores : [String] = ["1000","1000","1000","1000","1000","1000","1000","1000","1000","1000","1000","1000",
        "1000","1000","1000","1000","1000","1000","1000","1000","1000","1000","1000","1000",]
    var current_clicks = 0
    var background_color : UIColor = UIColor.white
    var recent_moves = 0
    
    private init(){
        
        
        /*
        func setHighScoreIndex(score:Int, index:Int){
            self.highscores[index] = score
        }
        
        func getHighscoreIndex(index: Int)->Int{
            return self.highscores[index]
        }
        func printHighScores(){
            for i in 1...highscores.count{
                print(highscores[i],",")
            }
        }*/
        
        
    }

}
