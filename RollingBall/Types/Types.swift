//
//  Types.swift
//  Ninja
//
//  Created by student on 2021-01-10.
//

import Foundation

struct PhysicsCategory {
    static let Player:       UInt32 = 0b1       //1
    static let Block:        UInt32 = 0b10      //2
    static let Obstacle:     UInt32 = 0b100     //4
    static let Ground:       UInt32 = 0b1000    //8
    static let FloatingGround: UInt32 = 0b10000 //16
    static let Coin:         UInt32 = 0b100000  //
}
