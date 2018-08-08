//
//  ViewController2.swift
//  nav
//
//  Created by xianzhang.dai on 2018/8/6.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController2: UIViewController ,UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        self.NaviSetting()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
        
    }
    
    func NaviSetting() {
        self.title = "SubPage 1"
        self.navigationController?.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc3 = ViewController3()
        self.navigationController?.pushViewController(vc3, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("did show")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
