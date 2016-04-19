//
//  WPTaskCell.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/19.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPTaskNameCell: WPBaseCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    

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
            self.nameLabel.text = model?.name

        }
        
        get {
            return self.taskModel
        }
        
    }
    
}
