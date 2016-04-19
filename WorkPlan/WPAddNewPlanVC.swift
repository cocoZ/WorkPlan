//
//  WPAddNewPlanVC.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/18.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPAddNewPlanVC: WPChangePlanBaseVC {

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.planModel = WPPlanModel()
        self.planModel.name = "计划1"
        self.planModel.deadline = ""
        
        let taskModel = WPTaskModel.init(name: "任务1", info: "学习", deadline: "", risk: "hello", isFinish: false)
        
        self.planModel.taskArr.insert(taskModel, atIndex: 0)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    

}
