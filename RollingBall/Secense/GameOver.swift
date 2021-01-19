//
//  GameOver.swift
//  Ninja
//
//  Created by student on 2021-01-11.
//

import SpriteKit

class GameOver: SKScene {
    
    //MARK: - Systems
    
    override func didMove(to view: SKView) {
        createBGNodes()
        createGroundNodes()
        creatNode()
        
        run(.sequence([
            .wait(forDuration: 3.5),
            .run {
                let scene = MainMenu(size: self.size)
                scene.scaleMode = self.scaleMode
                self.view!.presentScene(scene, transition: .doorsCloseVertical(withDuration: 0.5))
            }
        ]))
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveNode()
    }
}

//MARK: - Configurations

extension GameOver {
    
    func createBGNodes() {
        for i in 0...2 {
            let bgNode = SKSpriteNode(imageNamed: "background")
            bgNode.name = "background"
            bgNode.anchorPoint = .zero
            bgNode.zPosition = -1.0
            bgNode.position = CGPoint(x: CGFloat(i)*bgNode.frame.width, y: 0.0 )
            addChild(bgNode)        }
    }
    
    func createGroundNodes() {
        for i in 0...2 {
            let groundNode = SKSpriteNode(imageNamed: "ground")
            groundNode.name = "ground"
            groundNode.anchorPoint = .zero
            groundNode.zPosition = 1.0
            groundNode.position = CGPoint(x: CGFloat(i)*groundNode.frame.width, y: 0.0 )
            addChild(groundNode)        }
    }
    
    func moveNode() {
        enumerateChildNodes(withName: "background") { (node, _) in
            let node = node as! SKSpriteNode
            node.position.x -= 8.0
            
            if node.position.x < -self.frame.width {
                node.position.x += node.frame.width*2.0
            }
        }
        
        enumerateChildNodes(withName: "ground") { (node, _) in
            let node = node as! SKSpriteNode
            node.position.x -= 8.0
            
            if node.position.x < -self.frame.width {
                node.position.x += node.frame.width*2.0
            }
        }
    }
    
    func creatNode() {
        let gameOver = SKSpriteNode(imageNamed: "gameOver")
        gameOver.zPosition = 10.0
        gameOver.position = CGPoint(x:size.width/2.0, y: size.height/2.0 + gameOver.frame.height/2.0 )
        addChild(gameOver)
        
        let scaleUp = SKAction.scale(to: 1.1, duration: 0.5)
        let scaleDown = SKAction.scale(to: 1.0, duration: 0.5)
        let fullScale = SKAction.sequence([scaleUp, scaleDown])
        gameOver.run(.repeatForever(fullScale))
    }
}
