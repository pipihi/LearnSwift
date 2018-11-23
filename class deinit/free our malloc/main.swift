//
//  main.swift
//  free our malloc
//
//  Created by Beauty-jishu on 2018/10/29.
//  Copyright © 2018年 码叔. All rights reserved.
//

import Foundation

class Happy {
    // alloc memory
    var p = UnsafeMutablePointer<Int>.allocate(capacity: 100)
    deinit {
        // free memory
        self.p.deallocate()
        print("I was released!")
    }
}

var happy:Happy! = Happy()
happy = nil
