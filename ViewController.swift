//
//  ViewController.swift
//  test
//
//  Created by xianzhang.dai on 2018/8/2.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBAction func clickalert(_ sender: UIButton) {
        if let tmp = textfield.text{//对于UItextfield里可选类型的string进行解包
            let alert = UIAlertController(title: "message", message:"hello!\(tmp)", preferredStyle: .alert)
            let okaction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okaction)//添加按钮
            self.present(alert, animated: true, completion: nil)
            //点击事件绑定弹出框
        }
        
    }
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UILabel部分
        //label1 = UILabel()
        //label1.frame = CGRect(x: 150, y: 34, width: 35, height: 45)
        label1.backgroundColor = UIColor.brown
        label1.textColor = UIColor.green
        label1.text = "test"
        label1.font = UIFont.italicSystemFont(ofSize: 15)
        self.view.addSubview(label1)//代码添加新的控件及属性
        
        
        //self.view.backgroundColor = UIColor.yellow 对当前的view设置背景色
        
        //UIIMAGEVIEW部分
        
        
        let url = URL(string: "https://s1.ax1x.com/2018/08/02/P017bd.jpg")
        let data = try! Data(contentsOf: url!)
        
        let tmp = UIImage(data: data)
        img1.image = tmp
        img1.contentMode = UIViewContentMode.scaleAspectFit//使图片适配imageview，可能会留空
        
        btn.backgroundColor = UIColor.red
        btn2.backgroundColor = UIColor.green
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

