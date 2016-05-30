//
//  RootTableViewCell.swift
//  TableViewTips
//
//  Created by 赵晓东 on 16/5/27.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class RootTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel!
    
    var contentLabel: UILabel!
    
    let margin:CGFloat = 10
    
    // Class 初始化
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.prepareUI()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func prepareUI() {
    
        self.titleLabel = createLabel(CGRectZero, Font: 15, Text: "")
        self.titleLabel.textColor = UIColor.grayColor()
        self.contentView.addSubview(self.titleLabel)
        
        self.titleLabel.sd_layout()
            .leftSpaceToView(self.contentView, margin)
            .topSpaceToView(self.contentView, margin)
            .rightSpaceToView(self.contentView, margin)
            .heightIs(20)
        
        self.contentLabel = createLabel(CGRectZero, Font: 14, Text: "")
        self.contentLabel.textColor = UIColor.lightGrayColor()
        self.contentView.addSubview(self.contentLabel)
        self.contentLabel.numberOfLines = 0;
        
        self.contentLabel.sd_layout()
            .leftEqualToView(self.titleLabel)
            .rightEqualToView(self.titleLabel)
            .topSpaceToView(self.titleLabel, margin)
            .autoHeightRatio(0);
        
        self.setupAutoHeightWithBottomView(self.contentLabel, bottomMargin: margin)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
