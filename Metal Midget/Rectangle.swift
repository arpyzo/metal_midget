//
//  Square.swift
//  Metal Midget
//
//  Created by Robert Pyzalski on 7/7/18.
//  Copyright © 2018 Robert Pyzalski. All rights reserved.
//

import Foundation
import Metal

class Rectangle: Node {
    init(metalDevice: MTLDevice) {
        let TOP_LEFT     = Vertex(x: -0.5, y:  0.5, z:  0.0, r:  1.0, g:  0.0, b:  0.0, a:  1.0, tx: 0.0, ty: 0.0)
        let TOP_RIGHT    = Vertex(x:  0.5, y:  0.5, z:  0.0, r:  0.0, g:  1.0, b:  0.0, a:  1.0, tx: 1.0, ty: 0.0)
        let BOTTOM_LEFT  = Vertex(x: -0.5, y: -0.5, z:  0.0, r:  0.0, g:  0.0, b:  1.0, a:  1.0, tx: 0.0, ty: 1.0)
        let BOTTOM_RIGHT = Vertex(x:  0.5, y: -0.5, z:  0.0, r:  0.5, g:  0.5, b:  0.5, a:  1.0, tx: 1.0, ty: 1.0)
        
        let verticesArray = [
        //    TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT,
        //    TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT
            BOTTOM_RIGHT, BOTTOM_LEFT, TOP_LEFT,
            BOTTOM_RIGHT, TOP_LEFT, TOP_RIGHT
        ]
        super.init(vertices: verticesArray, metalDevice: metalDevice)
    }
}