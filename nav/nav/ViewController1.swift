//
//  ViewController1.swift
//  nav
//
//  Created by xianzhang.dai on 2018/8/6.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.leftBarButtonItem
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.brown
        self.NavSetting()
    }
    func NavSetting(){
        self.title = "HomePage"
        let nextItem = UIBarButtonItem(title: "next", style: .plain, target: self, action: #selector(NextPage))
        self.navigationItem.rightBarButtonItem = nextItem
        UINavigationBar.appearance().tintColor = UIColor.lightGray
        navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
        
    }
    @objc func NextPage(){
        let vc2 = ViewController2()
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let vc2 = ViewController2()
//        self.navigationController?.pushViewController(vc2, animated: true)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
