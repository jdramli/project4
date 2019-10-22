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
        
        // Load 'StartScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene2 = GKScene(fileNamed: "StartScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode2 = scene2.rootNode as! StartScene? {
                
                // Copy gameplay related content over to the scene
                sceneNode2.entities2 = scene2.entities
                sceneNode2.graphs2 = scene2.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode2.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode2)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
    }
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
