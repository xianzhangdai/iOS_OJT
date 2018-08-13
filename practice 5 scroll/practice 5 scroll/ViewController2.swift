//
//  ViewController2.swift
//  practice 5 scroll
//
//  Created by xianzhang.dai on 2018/8/13.
//  Copyright © 2018 xianzhang.dai. All rights reserved.
//

import UIKit

protocol nameDelegate: class {
    func duplicate(vc: ViewController2,str:String)
}

class ViewController2: UIViewController, CellDIYProtocol{
    
    let name:String = "accenture"
    weak var delegate: nameDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.naviSetting()
        let table:UITableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        table.delegate = self
        table.dataSource = self
        table.separatorStyle = UITableViewCellSeparatorStyle.none
        
        self.view.addSubview(table)
        table.register(cellDIY.self, forCellReuseIdentifier: "cell")
        
        
        // Do any additional setup after loading the view.
    }
    
//    func naviSetting(){
//        self.title = "最新优惠"
//        self.navigationController?.delegate = self
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func testBtnDidClick() {
        print(name)
    }
}

extension ViewController2: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: cellDIY = tableView.dequeueReusableCell(withIdentifier: "cell") as! cellDIY
        print(cell)
        if(cell.isEqual(nil)){
            cell = cellDIY(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        cell.cellDelagate = self
        
        cell.testBtnAction = { [weak self] (cell) in
            print(self?.name)
        }
//        let title:String = array[indexPath.row]
//        cell.textLabel!.text = title
        return cell
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 8
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //print("\(indexPath.row)")
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}
