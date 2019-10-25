//
//  ViewController.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/25/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var tableView: UITableView!
    var numlist : [Int] = []
    func setnums(){
        for i in 0...10{
            numlist.append(i*5)
        }
    }
    func printnums(){
        print("The numlist is:")
        for i in 0...10{
            print(" ", numlist[i])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    @IBAction func testprint(_ sender: Any) {
        setnums()
        printnums()
        self.view.backgroundColor = UIColor.systemIndigo
    }
    


}
