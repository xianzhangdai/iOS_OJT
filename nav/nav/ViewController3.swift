//
//  ViewController3.swift
//  nav
//
//  Created by xianzhang.dai on 2018/8/7.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.darkGray
        
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch:AnyObject in touches {
            let t:UITouch = touch as! UITouch
            print(t.location(in: self.view))
            if (t.location(in: self.view).y < 284){
                self.navigationController?.dismiss(animated: true, completion: nil)
            }else {
                
                if let vc1 = self.navigationController?.viewControllers[0] {
                    
                    if vc1.isKind(of: ViewController1.self) {
                        
                    }
                }
                if let vcs = self.navigationController?.viewControllers {
                    for vc in vcs {
                        if vc.isKind(of: ViewController1.self) {
                            
                            
                            self.navigationController?.popToViewController(vc, animated: true)
                            
                            
                            break
                        }
                    }
                    
                }
                
                
               
                //self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }
    
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
