//
//  StartViewController.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/16/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit
import SpriteKit
import GameKit

class StartViewController: UIViewController {

    public var total = 0 //adding this as a variable that may be able to be inserted into the existing table
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
        
    }
    
    var ind = 0
    var singleton_value = 0;
    let colors = [UIColor.white, UIColor.yellow, UIColor.green, UIColor.orange]
    
    @IBAction func pressed(_ sender: Any) {
        
        //Code on Button-Press to change background color and increment "total" counter variable
        total += 1 //incremeting the counter to track the "highest numbers of background color changes"
        //print(self.getTotal())
        self.view!.backgroundColor = colors[ind]
        if ind == colors.count - 1 {
            ind = 0
        }
        else{
            ind = ind + 1
        }
        
        //Test code to update or access the Singleton() class .swift file that is created to hold highscores. The idea is that if the number of clicks can be added to the tableview on the other ViewController screen, and then after successfully adding can be adjusted to only add if the score is high enough, and further sort that array, then this would mimic a "highscore" table of some sort.
        singleton_value = Singleton.shared.highscores[total%5]
        print(singleton_value)
        //
        //After testing the singleton, and it works, I can update the newly added "current_clicks" variable to track the current number of clicks to compare to an "all time high"
        Singleton.shared.current_clicks = Singleton.shared.current_clicks + 1
        print(Singleton.shared.current_clicks)
        
        //Now that the above statement successfully updates the static Singleton.shared instance, it would be best to see if this can be added to the table.  This likely must be done by moving to the ViewController code and modifying one of the default "extension" methods to get an "insert" to occur.
        
        //After adding it to the table, next we can sort it, or prevent it from being inserted if it is less than the lowest "highscore number of clicks"
        
        
    }
    
    func getTotal() -> Int{
        return self.total
    }
    
    /*
    var ind = 0
    let colors = [UIColor.black, UIColor.red, UIColor.green, UIColor.blue]
    @IBAction func ButtonAction(_ sender: Any){
        self.view!.backgroundColor = colors[ind]
        if ind == colors.count - 1 {
            ind = 0
        }
        else{
            ind = ind + 1
        }
    }
    @IBAction func unwindToViewControllerNameHere(segue: UIStoryboardSegue) {
           //nothing goes here
    }*/

    /*
    let colors = [UIColor.black, UIColor.red, UIColor.green, UIColor.blue]
    var indes = 0
    @IBAction func ButtonAction(_ sender: Any){
        self.view!.backgroundColor = colors[indes]
        if indes == colors.count - 1 {
            indes = 0
        }
        else{
            indes = indes + 1
        }
    }
 */

}
