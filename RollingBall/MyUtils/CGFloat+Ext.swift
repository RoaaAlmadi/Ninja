//
//  CGFloat+Ext.swift
//  Ninja
//
//  Created by student on 2021-01-09.
//

import CoreGraphics

public let π = CGFloat.pi

extension CGFloat {
    
    func radiansToDegree() -> CGFloat {
        return self * 180.0 / π
    }
    
    func degreesToRadians() -> CGFloat {
        return self * π / 180.0
    }
    
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random())/Float(0xFFFFFFF)) // retun 0, 1
    
    }
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        assert(min < max)
        return CGFloat.random() * (max - min) + min // retun min or max
        
    }
}
