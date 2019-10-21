//
//  GameScene.swift
//  project4
//
//  Created by Joseph Daniel Ramli on 10/16/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    private var counter : SKLabelNode?
    private var clicks = 0
    
    
    override func sceneDidLoad() {

        self.lastUpdateTime = 0
        self.counter = self.childNode(withName: "//count") as? SKLabelNode
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
        clicks = clicks + 1
        //print("Touch down detected and number of clicks is: " + String(clicks) )
        counter?.text = ("Counter: "+String(clicks))
      
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        //clicks = clicks + 1
        //counter?.text = ("Counter: " + String(clicks))
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        //print("Touch up detected")
        clicks = clicks + 1
        counter?.text = ("Counter: " + String(clicks))
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in self.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
    }
}
