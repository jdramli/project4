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
        
        //Test code to update or access the Singleton() class .swift file that is created to hold highscores
        singleton_value = Singleton.shared.highscores[total%5]
        print(singleton_value)
        
        
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
