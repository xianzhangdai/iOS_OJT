//
//  ViewController.swift
//  nav
//
//  Created by xianzhang.dai on 2018/8/6.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.yellow
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc1 = ViewController1()
        let navVC = UINavigationController(rootViewController: vc1)
        self.present(navVC, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

