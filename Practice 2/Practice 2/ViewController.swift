//
//  ViewController.swift
//  Practice 2
//
//  Created by xianzhang.dai on 2018/8/3.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var PassWord: UITextField!
    @IBOutlet weak var ConfirmPwd: UITextField!
    @IBOutlet weak var RegisBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserName.layer.borderColor = UIColor.yellow.cgColor
        UserName.layer.borderWidth = 1.0
        UserName.placeholder = "Please Enter"
        UserName.delegate = self
        
        PassWord.layer.borderColor = UIColor.yellow.cgColor
        PassWord.layer.borderWidth = 1.0
        PassWord.placeholder = "Please Enter"
        PassWord.isSecureTextEntry = true
        PassWord.delegate = self
        
        // 其他文本框同样设置//
        
        ConfirmPwd.layer.borderColor = UIColor.yellow.cgColor
        ConfirmPwd.layer.borderWidth = 1.0
        ConfirmPwd.placeholder = "Please Enter"
        ConfirmPwd.isSecureTextEntry = true
        ConfirmPwd.delegate = self
        
        RegisBtn.layer.borderColor = UIColor.black.cgColor
        RegisBtn.layer.borderWidth = 1.0
        RegisBtn.layer.cornerRadius = RegisBtn.frame.size.width / 10
        
        //监听username 长度8
        
        //监听password 长度8
        //监听confirm
        //regisbtn 不同alert
        
    //键盘弹出收入
        
        
        
    }
    
    @IBAction func FinalALT(_ sender: UIButton) {
        if ((UserName.text != nil) && (PassWord.text != nil) && (ConfirmPwd.text != nil) && PwdALT()){
            let alert = UIAlertController(title: "Message", message:"Registeration succeeded", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Warning!", message:"Please fill the blank", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "Back", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @objc func PwdALT() -> Bool{
        if(self.PassWord.text != self.ConfirmPwd.text){
            let alert = UIAlertController(title: "Warning!", message:"Inconsistent Password", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "Back", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
            return false
        }
        else{
            return true
        }
    }
    
    @objc func UserNameALT() -> Void{
        let alert = UIAlertController(title: "Warning!", message: "Invalid Length", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Back", style: .default, handler: nil)
        alert.addAction(OKAction)//添加按钮
        self.present(alert, animated: true, completion: nil)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        
        if (textField.text == self.UserName.text){
            //if(range.length == 1 && string.count == 0){
         //       return true;
         //   }
         //   else if ((textField.text?.count)! + string.count - range.length > 8){
            if ((textField.text?.count)! + string.count - range.length > 8){
                //print((textField.text?.count)! + string.count - range.length > 8)
                UserNameALT()
                return false
            }
        }
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("should begin")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("did begin")
        textField.becomeFirstResponder()
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("should end")
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("did end")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("should return")
        
        //let len = self.PassWord.text?.count
        for element in self.PassWord.text! {
            //print(loopIndex)
            var e:UInt32 = 0
            for ele in String(element).unicodeScalars{
                 e  = ele.value
                if(e < 48||e > 57||e < 65||e > 91||e < 97||e > 123){
                    let alert = UIAlertController(title: "Warning!", message:"Invalid Form", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "Back", style: .default, handler: nil)
                    alert.addAction(OKAction)//添加按钮
                    self.present(alert, animated: true, completion: nil)
                }
                
            }
        }
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

