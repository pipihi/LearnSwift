//
//  ViewController.swift
//  Http流式读取
//
//  Created by Beauty-jishu on 2018/12/12.
//  Copyright © 2018年 Beauty-jishu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,URLSessionDataDelegate,NSURLConnectionDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://codbo.cn/zb_users/theme//filmlee/style/images/logo.png")!
        
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        var req = URLRequest(url: url)
        req.httpMethod = "HEAD"
        let task = session.dataTask(with: req) { (data
            , res
            , err) in
            if err != nil {
                print("请求错误")
                return
            }
            let httpUrlRes = res! as! HTTPURLResponse
            
            print("请求数据成功-->\(httpUrlRes.allHeaderFields), \(res!.mimeType)")
            
        }
        task.resume()
    }
    
//    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
//        print("接受到数据-->\(data.count)")
//    }
//
//    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
//        if let err = error {
//            print("错误-->\(err)")
//            return
//        }
//        print("完成")
//    }
//
   
}

