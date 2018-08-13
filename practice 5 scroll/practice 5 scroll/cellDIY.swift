//
//  TableViewCell.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/13.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

protocol CellDIYProtocol:NSObjectProtocol {
    func testBtnDidClick()
}

class cellDIY: UITableViewCell ,nameDelegate{
    
    
    var nameDup:String?
    var titleLabel:UILabel?
    var subView:UIView?
    
    var testBtnAction:(_ cell:cellDIY)->Void = {_ in print("111111111111")}
    
    weak var cellDelagate:CellDIYProtocol?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI(){
        self.subView = UIView(frame: CGRect(x: 10, y: 10, width: UIScreen.main.bounds.width-20, height: 160))
        self.subView?.backgroundColor = UIColor(displayP3Red: 39 / 255, green: 47/255 , blue: 56/255, alpha: 1)
        self.subView?.layer.cornerRadius = 10
        self.subView?.layer.masksToBounds = true
        self.contentView.addSubview(subView!)
        
        self.titleLabel = UILabel.init()
        self.titleLabel?.backgroundColor = UIColor(displayP3Red: 249/255, green: 206/255, blue: 47/255, alpha: 1)
        self.titleLabel?.frame = CGRect(x:65, y:0, width:100, height:50)
        self.titleLabel?.text = "Asia miles"
        self.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        self.titleLabel?.textAlignment = NSTextAlignment.left
        
        self.subView?.addSubview(self.titleLabel!)
        
        let btn = UIButton(type: .custom)
        btn.backgroundColor = UIColor.yellow
        btn.setTitle("test", for: .normal)
        btn.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        btn.addTarget(self, action: #selector(testAction), for: .touchUpInside)
        subView?.addSubview(btn)
    }
    @objc func testAction() {
        print("......")
//        let viewSuper = ViewController2(nibName: "ViewController2", bundle: nil)
//        viewSuper.delegate = self
//        self.nameDup = viewSuper.name
//        print(nameDup!)
        
//        cellDelagate?.testBtnDidClick()
        testBtnAction(self)
    }
    func duplicate(vc: ViewController2, str: String) {
        self.nameDup = str
    }
}
