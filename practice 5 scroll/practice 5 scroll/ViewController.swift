//
//  ViewController.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/7.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scr1: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scr1.backgroundColor = UIColor.lightGray
        scr1.frame = CGRect(x: 10, y: 30, width: UIScreen.main.bounds.width - 50, height: 450)
        scr1.contentSize = CGSize(width: 1500, height: 450)
        scr1.isPagingEnabled = true
        scr1.indicatorStyle = UIScrollViewIndicatorStyle.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

