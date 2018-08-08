//
//  ViewController.swift
//  Practice 3 Tableview
//
//  Created by xianzhang.dai on 2018/8/6.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    let BtnInitNum: Int = 10
    let array :[String] =
        [("首页"),("日程表"),("积分兑换"),("联系我们"),("通用"),("设置"),("账户1"),("账户2"),("个性化"),("提醒铃声"),("壁纸"),("主题"),("更多"),("每日福利"),("浏览记录"),("注销")]
    let table:UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.backgroundColor = UIColor.orange
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
        //table.register(UITableViewCell.self(ds), forCellReuseIdentifier: "cell")
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func ssss() {
        
    }

}


extension ViewController:UITableViewDelegate,UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        print(cell)
        switch indexPath.row{
        case 0,4,8,12:cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        case 0..<4:
            cell.backgroundColor = UIColor.yellow
        
        case 4..<8:
            cell.backgroundColor = UIColor.brown
        case 8..<12:
            cell.backgroundColor = UIColor.purple
        case 12..<16:
            cell.backgroundColor = UIColor.gray
        default:
            cell.backgroundColor = UIColor.yellow
            
            
        }
        
        
        let title:String = array[indexPath.row]
        cell.textLabel!.text = title
         return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
//    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
//        return nil
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
  //      let indexp = IndexPath(row: 0, section: 0)
        print(indexPath)
    }
    
    
}

