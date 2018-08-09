//
//  InitView.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/8.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import Foundation
import UIKit

class InitView: UIView{
    static func SetView(view:UIView,num:Int) -> UIView{
        view.frame = CGRect(x: 0, y: 0, width: 320, height: 500)
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
//        view.layer.borderWidth = 5
//        view.layer.borderColor = UIColor.red.cgColor
        let path = Bundle.main.path(forResource: "img\(num)", ofType: "jpg")
        let Imgview:UIImage = UIImage(contentsOfFile: path!)!
        let Img:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 800, height: 500))
        Img.image = Imgview
        Img.contentMode = UIViewContentMode.scaleAspectFill
        let Label1 = UILabel(frame: CGRect(x: 30, y: 300, width: 180, height: 80))
        let Label2 = UILabel(frame: CGRect(x: 30, y: 400, width: 180, height: 40))
        
        Label1.text = "Accenture"
        Label1.textColor = UIColor.yellow
        Label2.text = "xianzhang.dai"
        Label2.textColor = UIColor.yellow
        
        view.addSubview(Img)
        view.addSubview(Label1)
        view.addSubview(Label2)
        
        return view
    }
    
}

//class upLine:UIView{
//    static func InitLine() -> UIView{
//        let line = UIView()
//        var ViewArr : [UIView] = [UIView]()
//        line.frame.size.height = 2
//        line.backgroundColor = UIColor.yellow
//        line.frame.origin.x =
         // line.frame.origin.y =
//
//        return line
//    }
//}
