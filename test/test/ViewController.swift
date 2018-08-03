//
//  ViewController.swift
//  test
//
//  Created by xianzhang.dai on 2018/8/2.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITextFieldDelegate ,JumpDelegate{
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn: UIButton!
    @IBOutlet weak var Img1: UIImageView!
    @IBOutlet weak var Label1: UILabel!
    @IBAction func ClickAlert(_ sender: UIButton) {
        if let tmp = TextField.text{//对于UITextField里可选类型的string进行解包
            let alert = UIAlertController(title: "message", message:"hello!\(tmp)", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
            //点击事件绑定弹出框
        }
    }
    
   
    var TextField1:UITextField!
    @objc func ChgTxtClr(_ sender: UIButton?) {
        if let tmp = TextField1.text {
            //print(tmp)
            TextField1.textColor = UIColor.red
        }
    }
    var Btn3:UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UILabel部分
        //Label1 = UILabel()
        //Label1.frame = CGRect(x: 150, y: 34, width: 35, height: 45)
        Label1.backgroundColor = UIColor.brown
        Label1.textColor = UIColor.green
        Label1.text = "test"
        Label1.font = UIFont.italicSystemFont(ofSize: 15)
        self.view.addSubview(Label1)//代码添加新的控件及属性
        
        //self.view.backgroundColor = UIColor.yellow 对当前的view设置背景色
        
        //UIIMAGEVIEW部分
        let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1533272043311&di=38b614ca6de14f96531387c81bea5f88&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D1081879956%2C3697723092%26fm%3D214%26gp%3D0.jpg")
        let data = try! Data(contentsOf: url!)
        let tmp = UIImage(data: data)
        Img1.image = tmp
        Img1.contentMode = UIViewContentMode.scaleAspectFit//使图片适配imageview，可能会留空
        
        Btn.backgroundColor = UIColor.red
        Btn2.backgroundColor = UIColor.green
        Btn.addTarget(self, action: #selector(Jump), for: UIControlEvents.touchUpInside)
        
        //Btn3
        Btn3 = UIButton(type: .custom)
        Btn3.frame = CGRect(x: 200, y: 150, width: 50, height: 50)
        Btn3.setTitle("Red", for: .normal)
        Btn3.setTitleColor(UIColor.black, for: .normal)
        Btn3.backgroundColor = UIColor.yellow
        Btn3.layer.cornerRadius = Btn3.frame.size.width / 2;
        Btn3.layer.masksToBounds = true;
        Btn3.addTarget(self, action: #selector(ChgTxtClr(_:)), for: UIControlEvents .touchUpInside)
        self.view.addSubview(Btn3)
        
        //TEXTFIELD1
        TextField1 = UITextField(frame: CGRect(x: 40, y: 150, width: 90, height: 50))
        TextField1.delegate = self
        TextField1.borderStyle = UITextBorderStyle.roundedRect
        TextField1.layer.borderColor = UIColor.red.cgColor
        TextField1.layer.borderWidth = 1.0
        TextField1.placeholder = "Enter"
        TextField1.clearButtonMode = .unlessEditing
        TextField1.adjustsFontSizeToFitWidth = true
        self.view.addSubview(TextField1)
    }
    
    @objc func Jump(){
        let ViewCtrl = ViewController2(nibName: "ViewController2", bundle: nil)
        ViewCtrl.delegate = self
        ViewCtrl.TextField?.text = TextField.text
        present(ViewCtrl, animated: true, completion: nil)
    }
    
    func PassTheValue(VC: ViewController2, value: String) {
        self.TextField.text = value
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        UIView.animate(withDuration: 1.0) {
            self.view.frame = CGRect(x: 0, y: -100, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
        }
        return true
    }
}

//CONSTRAINT
/*Btn3.translatesAutoresizingMaskIntoConstraints = false
 let rightCon: NSLayoutConstraint = NSLayoutConstraint(item: Btn3, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.right, multiplier: 1.0, constant: 20)
 Btn3.superview!.addConstraint(rightCon)
 
 let btmCon: NSLayoutConstraint = NSLayoutConstraint(item: Btn3, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view1, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 20)
 Btn3.superview!.addConstraint(btmCon)
 
 TextField1.translatesAutoresizingMaskIntoConstraints = false
 
 let leftCon: NSLayoutConstraint = NSLayoutConstraint(item: TextField1, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.left, multiplier: 1.0, constant: 20)
 TextField1.superview!.addConstraint(leftCon)
 
 let btmCon1: NSLayoutConstraint = NSLayoutConstraint(item: TextField1, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view1, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 20)
 TextField1.superview!.addConstraint(btmCon1)8*/
