//
//  ViewController2.swift
//  test
//
//  Created by xianzhang.dai on 2018/8/2.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

protocol JumpDelegate: class {
    func PassTheValue(VC: ViewController2 , value: String)
}

class ViewController2: UIViewController {
    weak var delegate: JumpDelegate?
    var TextField:UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //weak var 
        // Do any additional setup after loading the view.
    
        TextField = UITextField(frame: CGRect(x: 40, y: 200, width: 140, height: 50))
        //TextField.delegate = self
        TextField?.borderStyle = UITextBorderStyle.roundedRect
        TextField?.layer.borderColor = UIColor.green.cgColor
        TextField?.layer.borderWidth = 1.0
        //TextField.placeholder = "Enter"
        TextField?.clearButtonMode = .unlessEditing
        TextField?.adjustsFontSizeToFitWidth = true
        self.view.addSubview(TextField!)
        
        let EscBtn = UIButton(type: .custom)
        EscBtn.frame = CGRect(x: 200, y: 150, width: 50, height: 50)
        EscBtn.setTitle("Back", for: .normal)
        EscBtn.setTitleColor(UIColor.black, for: .normal)
        EscBtn.backgroundColor = UIColor.yellow
        EscBtn.layer.cornerRadius = EscBtn.frame.size.width / 2;
        EscBtn.layer.masksToBounds = true;
        self.view.addSubview(EscBtn)
        EscBtn.addTarget(self, action: #selector(Esc), for: UIControlEvents.touchUpInside)
    }

    @objc func Esc(){
        if( self.delegate != nil) {
            self.delegate?.PassTheValue(VC: self, value: (TextField?.text!)!)
        }
        self.dismiss(animated: true, completion: nil)
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
