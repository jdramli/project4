//
//  TableViewController.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/23/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import Foundation
import UIKit

class ProfExampleTableViewController: UITableViewController {
    
    var numlist : [Int]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    func createNums(){
        for i in 0...10{
            numlist[i] = i+5
            print("Added",numlist[i],"/n")
        }
    }
}

extension ProfExampleTableViewController : UITableViewDataSource, UITableViewDelegate {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numlist.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>)
    }
    
}
