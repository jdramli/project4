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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
    }
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
    }

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
