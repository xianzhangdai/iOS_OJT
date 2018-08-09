//
//  AMLImgView.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/8.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class AMLImgView: UIView {
    let labArr1 :[Int] = [0,300,80,50]
    let labArr2 :[Int] = [0,350,180,50]
    let labArr3 :[Int] = [0,400,180,50]
    let corRadDef : CGFloat = 10
    var imgPath:String?
    {
        didSet {
            imgView?.image = UIImage(contentsOfFile: imgPath!)
            
        }
    }
    
     var imgView:UIImageView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = corRadDef
        self.layer.masksToBounds = true
    
        imgView = UIImageView(frame: self.bounds)
        imgView!.contentMode = .scaleAspectFill
        self.addSubview(imgView!)
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = imgView!.layer.position
        animation.byValue = NSValue(cgPoint: CGPoint(x: 240, y: 0))
        animation.duration = 30
        animation.autoreverses = true
        animation.repeatCount = 50
        imgView!.layer.add(animation, forKey: nil)
        print("view:\(imgView!.bounds.origin.y)")
        print("layer:\(imgView!.layer.bounds.origin.y)")
        labelSet()
        
        
    }
    func labelSet(){
        let Label1 = UILabel(frame: CGRect(x: labArr1[0], y: labArr1[1], width: labArr1[2], height: labArr1[3]))
        let Label2 = UILabel(frame: CGRect(x: labArr2[0], y: labArr2[1], width: labArr2[2], height: labArr2[3]))
        let Label3 = UILabel(frame: CGRect(x: labArr3[0], y: labArr3[1], width: labArr3[2], height: labArr3[3]))
        
        Label1.text = "赚取"
        Label1.textColor = UIColor.white
        Label1.textAlignment = NSTextAlignment.right
        Label1.backgroundColor = UIColor(displayP3Red: 39 / 255, green: 47/255 , blue: 56/255, alpha: 1)
        Label2.text = "  专享迎新奖赏高达"
        Label2.textColor = UIColor.black
        Label2.adjustsFontSizeToFitWidth = true
        Label2.font = UIFont.boldSystemFont(ofSize: 20)
        Label2.backgroundColor = UIColor(displayP3Red: 249/255, green: 206/255, blue: 47/255, alpha: 1)
        Label3.text = "  154,000里数"
        Label3.textColor = UIColor.black
        Label3.adjustsFontSizeToFitWidth = true
        Label3.font = UIFont.boldSystemFont(ofSize: 20)
        Label3.backgroundColor = UIColor(displayP3Red: 249/255, green: 206/255, blue: 47/255, alpha: 1)
        
        
        
        self.addSubview(Label1)
        self.addSubview(Label2)
        self.addSubview(Label3)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


