//
//  main.swift
//  队列和线程
//
//  Created by Beauty-jishu on 2018/11/29.
//  Copyright © 2018年 Beauty-jishu. All rights reserved.
//

import Foundation

let q1 = DispatchQueue(label: "q1")
let q2 = DispatchQueue(label: "q1")

q1.async {
    print("q1-->\(Thread.current.name)")
}
q2.async {
    print("q1-->\(Thread.current.name)")
}

sleep(1)
