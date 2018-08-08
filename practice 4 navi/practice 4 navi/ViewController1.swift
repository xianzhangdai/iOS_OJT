//
//  ViewController1.swift
//  practice 4 navi
//
//  Created by xianzhang.dai on 2018/8/7.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    let array:[String] = ["日程表","积分兑换","联系我们"]
    let table:UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.orange
        table.backgroundColor = UIColor.orange
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.title = "首页"
        UINavigationBar.appearance().tintColor = UIColor.lightGray
        navigationController?.navigationBar.barStyle = UIBarStyle.blackTranslucent
        
        
        
        //let vc1_1 = ViewController1_1()
        //self.present(vc1_1, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        switch indexPath.row{
        case 0:do {
            let vc1_1 = ViewController1_1()
            self.navigationController?.pushViewController(vc1_1, animated: true)
            }
        
        default:do {
            let alert = UIAlertController(title: "通知", message:"开发中", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "返回", style: .default, handler: nil)
            alert.addAction(OKAction)//添加按钮
            self.present(alert, animated: true, completion: nil)
            }
        }
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

extension ViewController1:UITableViewDataSource,UITableViewDelegate{
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
