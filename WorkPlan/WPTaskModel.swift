//
//  WPTaskModel.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/18.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPTaskModel {
    
    var info: String?
    var deadline: String?
    var risk: String?
    var isFinish: Bool?

    
    init(info: String, deadline: String, risk: String, isFinish: Bool) {
        
        self.info = info
        self.deadline = deadline
        self.risk = risk
        self.isFinish = isFinish
    }
}
