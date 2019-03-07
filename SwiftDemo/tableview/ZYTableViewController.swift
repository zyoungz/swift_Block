//
//  ZYTableViewController.swift
//  SwiftDemo
//
//  Created by 周阳 on 2019/3/5.
//  Copyright © 2019 tabletennis. All rights reserved.
//

import UIKit

class ZYTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataSource = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTableView()
    }
    
    
    func setTableView()
    {
        let myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.backgroundColor = UIColor.white
        self.view.addSubview(myTableView)
        
        hildTableViewExtraCellLineHidden(tableView: myTableView)
      
        
        dataSource = [
            ["name":"王小明","sex":"男","icon":"icon_addperson","birthday":"2017-10-11"],
            ["name":"李磊","sex":"男","icon":"icon_addressbook","birthday":"2011-12-30"],
            ["name":"韩梅","sex":"女","icon":"icon_addresslist","birthday":"2014-9-10"],
            ["name":"JIM","sex":"男","icon":"icon_affiliations_li","birthday":"2008-10-1"]]
        myTableView.reloadData()
    }
    
    func hildTableViewExtraCellLineHidden(tableView : UITableView){
        let view = UIView()
        view.backgroundColor = UIColor.clear
        tableView.tableFooterView = view
        tableView.tableHeaderView = view
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellStr = "cellStr"
        var dequCell:ZYListCell? = tableView.dequeueReusableCell(withIdentifier: cellStr) as? ZYListCell
        if dequCell == nil {
            dequCell = ZYListCell(style: .subtitle, reuseIdentifier: cellStr)
        }
        
        let dict:Dictionary = dataSource[indexPath.row]

        dequCell?.backgroundColor = UIColor.white
        dequCell?.anthorImgView.image = UIImage(named: dict["icon"]!)
        dequCell?.usernameLabel?.text = dict["name"]
        dequCell?.birthdayLabel?.text = dict["sex"]
        dequCell?.accessoryType = .disclosureIndicator
        
        return dequCell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let FV = FVController()
        FV.userId = "jakjgkla"
       self.navigationController?.pushViewController(FV, animated: true)
    }
}
