//
//  StartScene.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/18/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import SwiftUI
import SpriteKit
import GameplayKit

class StartScene: SKScene {
    var entities2 = [GKEntity]()
    var graphs2 = [String : GKGraph]()
    private var welcome: SKLabelNode?
    private var redsquare : SKSpriteNode?
    private var clicks = 0
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
    
    override func sceneDidLoad() {
        print("Where is the childnode function being called?")
        self.redsquare = self.childNode(withName: "//redsquare") as? SKSpriteNode
        
     
    }
    func touchDown(atPoint pos : CGPoint) {
       
        clicks = clicks + 1
        print("Touch down detected and number of clicks is: " + String(clicks) )
        
      
    }
    func update(){
        
    }
          
}



