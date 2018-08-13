//
//  ViewController.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/7.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    //weak var aaa:UIView?
    @IBOutlet weak var scr1: UIScrollView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var backLine: UIView!
    let heightofImg :CGFloat = 500
    let heightofLine :CGFloat = 10
    var viewNum :CGFloat = 0
    let lineRad : CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(displayP3Red: 39 / 255, green: 47/255 , blue: 56/255, alpha: 1)
        setupHeader()
        setupScroll(scr: scr1)
        setupView()
        setupLine()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupScroll(scr:UIScrollView){
        scr.backgroundColor = UIColor.lightGray
        scr.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - heightofImg, width: UIScreen.main.bounds.width, height: heightofImg)
        scr.contentSize = CGSize(width: 800, height: heightofImg)
        scr.isPagingEnabled = true
        scr.indicatorStyle = UIScrollViewIndicatorStyle.white
        scr.showsHorizontalScrollIndicator = false
        scr.delegate = self
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let  offset = scrollView.contentOffset
        
        line.frame = CGRect(x: (offset.x / self.scr1.contentSize.width) * UIScreen.main.bounds.width,
                            y: UIScreen.main.bounds.height - heightofImg - 8,
                            width:(UIScreen.main.bounds.width / viewNum ) ,
                            height: heightofLine)
        
        //print((offset.x / self.scr1.contentSize.width) * UIScreen.main.bounds.width)
        //print("did scroll")
        
    }
    
    func setupView(){
        for i in 1...6 {
            let x = UIScreen.main.bounds.width * (CGFloat(i) - 1.0)
            let view = AMLImgView(frame: CGRect(x: x, y: 0, width: UIScreen.main.bounds.width, height: heightofImg))
            let path = Bundle.main.path(forResource: "img\(i)", ofType: "jpg")
            view.imgPath = path
            self.scr1.addSubview(view)
            viewNum = CGFloat(i)
        }
        
        self.scr1.contentSize = CGSize(width: UIScreen.main.bounds.width * 6, height:heightofImg)
    }
    func setupHeader(){
        let title = UILabel(frame: CGRect(x: 120, y: 12, width: 80, height: 50))
        title.text = "热门优惠"
        title.textColor = UIColor.white
        title.textAlignment = NSTextAlignment.center
        self.view.addSubview(title)
        
        let button = UIButton(type: .custom)
        
        button.frame = CGRect(x: 280, y: 24, width: 25, height: 25)
        button.setTitle("->", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor(displayP3Red: 249/255, green: 206/255, blue: 47/255, alpha: 1)
        button.layer.cornerRadius = button.frame.size.width / 2;
        button.layer.masksToBounds = true;
        button.addTarget(self, action: #selector(Jump(_:)), for: UIControlEvents .touchUpInside)
        self.view.addSubview(button)
    }
    @objc func Jump(_ sender: UIButton?) {
        let vc2 = ViewController2()
        self.present(vc2, animated: true, completion: nil)
    }
    
    func setupLine(){
//        UINavigationBar.appearance().tintColor = UIColor.lightGray
//        navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
//        self.NavSetting()
        
        backLine.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - heightofImg - 8, width: UIScreen.main.bounds.width, height: heightofLine)
        backLine.layer.backgroundColor = UIColor.darkGray.cgColor
        line.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - heightofImg - 8, width:(UIScreen.main.bounds.width / viewNum ) , height: heightofLine)
        line.layer.backgroundColor = UIColor(displayP3Red: 249/255, green: 206/255, blue: 47/255, alpha: 1).cgColor
        line.layer.cornerRadius = lineRad
       
        self.view.addSubview(backLine)
        self.view.addSubview(line)
    }
    
//    func NavSetting(){
//        self.title = "热门优惠"
////        let nextItem = UIBarButtonItem(title: "next", style: .plain, target: self, action: #selector(NextPage))
////        self.navigationItem.rightBarButtonItem = nextItem
////        UINavigationBar.appearance().tintColor = UIColor.lightGray
////        navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
//    }
////    @objc func NextPage(){
//        let vc2 = ViewController2()
//        self.navigationController?.pushViewController(vc2, animated: true)
//    }

}
//     func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        print("will begin")
//    }
//    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
//        print("end")
//
//        //self.line.frame = CGRect(x: (UIScreen.main.bounds.width / viewNum ), y: 0, width: (UIScreen.main.bounds.width / viewNum ), height: heightofLine)
//    }
//     func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
//        print("didchange")
//    }




//    //        let a = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
//    //        aaa = a
//    //
//    //
//    //        self.view.addSubview(scr1)
//    //        self.view.subviews
//    //        print("a-----\(a)")
//    //        print("aaa-----\(aaa)")
//}
//func ImgLoad(str:String){
//
//}
////    deinit {
////        <#statements#>
////    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print(aaa)
//
//    }
