//
//  CGPoint+Ext.swift
//  Ninja
//
//  Created by student on 2021-01-05.
//

import Foundation
import CoreGraphics

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func += (left: inout CGPoint, right: CGPoint)  {
    left = left + right
}

func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func -= (left: inout CGPoint, right: CGPoint)  {
    left = left - right
}

func * (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

func *= (left: inout CGPoint, right: CGPoint)  {
    left = left * right
}

func / (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x / right.x, y: left.y / right.y)
}

func /= (left: inout CGPoint, right: CGPoint)  {
    left = left / right
}

func * (Point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: Point.x * scalar, y: Point.y * scalar)
}

func *= (Point: inout CGPoint, scalar: CGFloat) {
    Point = Point * scalar
}

func / (Point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: Point.x / scalar, y: Point.y / scalar)
}

func /= (Point: inout CGPoint, scalar: CGFloat) {
    Point = Point / scalar
}



