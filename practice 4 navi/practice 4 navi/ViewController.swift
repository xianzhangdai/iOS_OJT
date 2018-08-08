//
//  ViewController.swift
//  practice 4 navi
//
//  Created by xianzhang.dai on 2018/8/7.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    let array :[String] =
        [("首页"),("通用"),("个性化"),("更多")]
    let table:UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        table.backgroundColor = UIColor.orange
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.title = "HomePage"
        UINavigationBar.appearance().tintColor = UIColor.lightGray
        navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        switch indexPath.row{
        case 0:do {
            let vc1 = ViewController1()
            self.navigationController?.pushViewController(vc1, animated: true)
            }
        case 1:do {
            let vc2 = ViewController2()
            self.navigationController?.pushViewController(vc2, animated: true)
            }
        default:do {
            let alert = UIAlertController(title: "通知", message:"开发中", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "返回", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
            }
    }
    }

}


extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        print(cell)
        let title:String = array[indexPath.row]
        cell.textLabel!.text = title
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
