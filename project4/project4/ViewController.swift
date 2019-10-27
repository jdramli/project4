//
//  ViewController.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/25/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    weak var tableView: UITableView!
    var tempholder = StartViewController().getTotal()
   var items: [String] = [
        "Top Cell", "Cell below changes with clicks", "🐔", "Bunch of Emojis Below!", "🦊", "🐵", "🐼", "🐷", "💩", "🐰",
        "🤖", "🦄", "🐻", "🐲", "🦁", "💀", "🐨", "🐯", "👻", "🦖",
    ]
    //
    override func loadView() {
        super.loadView()
        
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableView)
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32.0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32.0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        tableView.backgroundColor = UIColor.lightGray
        
        items[2] = "Clicks of 'Change Background Color': " + String(Singleton.shared.current_clicks)

    self.tableView = tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.tableView.dataSource = self
    }
   
    @IBAction func pressedVC2(_ sender: Any) {
        items[2] = String(Singleton.shared.current_clicks)
    }
        
      
        
    
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = self.items[indexPath.item]
        cell.textLabel?.text = item
        return cell
    }
    
}

 /*
    weak var tableView: UITableView!
    var items: [String] = [ "2", "8", "25", "10", "15", "90" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        //tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")

        self.tableView.dataSource = self

    }
    override func loadView() {
        super.loadView()
        
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableView)
        NSLayoutConstraint.activate([
        self.view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: tableView.topAnchor),
        self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: tableView.bottomAnchor),
        self.view.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
        self.view.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
    ])
    self.tableView = tableView
    }
    
    @IBAction func testprint(_ sender: Any) {
        //setnums()
        //printnums()
        self.view.backgroundColor = UIColor.systemIndigo
    }
    


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
        //return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = self.items[indexPath.item]
        cell.textLabel?.text = item
        return cell
        
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let temp = Int.random(in: 1...10)
        cell.textLabel?.text = String(temp)
        return cell*/
    }
}
*/
