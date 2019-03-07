//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 周阳 on 2019/2/28.
//  Copyright © 2019 tabletennis. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var selfImage:UIImageView!
    var selfBtn:UIButton!
    var selfLabel:UILabel!
    var selfView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        setUI()
        GetHttp()
    }

    func setUI(){
//        selfImage = UIImageView()
//        selfImage.image = UIImage(named: "icon-test")
//        selfImage.isUserInteractionEnabled = true
//        selfImage.frame = CGRect(x: 50, y: 100, width: 30, height: 30)
//        self.view.addSubview(selfImage)
        
        selfBtn = UIButton()
        selfBtn.setImage(UIImage(named: "icon-test"), for: .normal)
        selfBtn.tag = 100
        selfBtn.isUserInteractionEnabled = true
//        selfBtn.frame = CGRect(x: 100, y: 100, width: 30, height: 30)
        selfBtn.addTarget(self, action: #selector(titleButtonAction(sender:)), for: .touchUpInside)
        self.view.addSubview(selfBtn)
        
        selfBtn.snp.makeConstraints { (make) in
            make.left.equalTo(100)
            make.top.equalTo(100)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
//        selfLabel = UILabel()
//        selfLabel.text = "label-test"
//        selfLabel.textColor = UIColor.red
//        selfLabel.textAlignment = NSTextAlignment.left
//        self.view.addSubview(selfLabel)
//        selfLabel.snp.makeConstraints { (make) in
//            make.left.equalTo(100)
//        make.top.equalTo(selfBtn.snp.bottom).offset(100)
//            make.width.equalTo(80)
//            make.height.equalTo(30)
//        }
//
//        selfView = UIView()
//        selfView.backgroundColor = UIColor.lightGray
//        selfView.tag = 100
//        selfView.layer.cornerRadius = 5
//        selfView.frame = CGRect(x: 200, y: 200, width: 40, height: 40)
//        self.view.addSubview(selfView)
    }
    
    func GetHttp(){
        
    }
    
    @objc func titleButtonAction(sender:UIButton){
        let vc = ZYTableViewController();
       
        self.navigationController?.pushViewController(vc, animated: true)
    }

}


