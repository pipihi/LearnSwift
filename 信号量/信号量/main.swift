//
//  main.swift
//  信号量
//
//  Created by Beauty-jishu on 2018/11/29.
//  Copyright © 2018年 Beauty-jishu. All rights reserved.
//

import Foundation

// value = 0
var semaphore = DispatchSemaphore(value: 0 )

var q1 = DispatchQueue(label: "sub thread")
q1.async {
    print(".")
    // 当value>1或者超时wait继续往下执行，否则等待 执行后value--
    _ = semaphore.wait(timeout: .distantFuture)
    print("sub exit!")
}

// value++
semaphore.signal()

sleep(1)

print("main exit!")

