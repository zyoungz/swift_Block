//
//  ZYListCell.swift
//  SwiftDemo
//
//  Created by 周阳 on 2019/3/5.
//  Copyright © 2019 tabletennis. All rights reserved.
//

import UIKit

class ZYListCell: UITableViewCell {

    let width:CGFloat = UIScreen.main.bounds.width
    var usernameLabel:UILabel!   //名字
    var birthdayLabel:UILabel!   //出生日期
    var sexLabel:UILabel!        //性别
    var anthorImgView:UIImageView!     //头像
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        anthorImgView = UIImageView(frame: CGRect(x: 20, y: 15, width: 44, height: 44))
        anthorImgView.layer.cornerRadius = 22
        anthorImgView.clipsToBounds = true
        
        
        usernameLabel = UILabel(frame: CGRect(x: 74, y: 18, width: 70, height: 20))
        usernameLabel.textColor = .black
        usernameLabel.textAlignment = .left
        usernameLabel.font = UIFont.systemFont(ofSize: 13)
        
        birthdayLabel = UILabel(frame: CGRect(x: 74, y: 49, width: width - 94, height: 13))
        birthdayLabel.textColor = UIColor.gray
        birthdayLabel.textAlignment = .left
        birthdayLabel.font = UIFont.systemFont(ofSize: 13)
        
        self.addSubview(anthorImgView)
        self.addSubview(usernameLabel)
        self.addSubview(birthdayLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
