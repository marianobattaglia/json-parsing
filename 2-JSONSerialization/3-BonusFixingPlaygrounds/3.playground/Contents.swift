//: Playground - noun: a place where people can play

import UIKit

struct Point {
    
    var x :Int
    var y :Int
    var z :Int
}

extension Point {
    
    init(x :Int, y:Int, z:Int = 0) {
        self.x = x
        self.y = y
        self.z = z
    }
}
