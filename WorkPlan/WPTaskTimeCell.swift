//
//  WPTaskTimeCell.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/19.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPTaskTimeCell: WPBaseCell {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var editBtn: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override var taskModel: WPTaskModel? {
        
        set (model){
            self.timeLabel.text = model?.deadline
            
        }
        
        get {
            return self.taskModel
        }
        
    }
    
}
