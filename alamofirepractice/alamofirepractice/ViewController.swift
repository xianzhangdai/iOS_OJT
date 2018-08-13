//
//  ViewController.swift
//  alamofirepractice
//
//  Created by xianzhang.dai on 2018/8/13.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Alamofire.request("https://httpbin.org/get", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON{(response) in
                print(response.request!)
                print("-----------------")
                print(response.response!)
                print("-----------------")
                print(response.data!)
                print("-----------------")
                print(response.result)
                print("-----------------")
                print(response.metrics)
                print("-----------------")
                print(response.timeline)
                
                if let JSON = response.result.value{
                    print("JSON:\(JSON)")
                }
        }
        
        print("ddddddddd")

    }
}
