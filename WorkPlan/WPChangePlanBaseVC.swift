//
//  WPChangePlanBaseVC.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/18.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPChangePlanBaseVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView!
    var planModel: WPPlanModel!
//    var dataSource: Array = Array

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
        
    }

    
    func setupTableView() {
        
        self.tableView = UITableView.init(frame: CGRectZero, style: UITableViewStyle.Grouped)
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 + self.planModel.taskArr.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("xxx", forIndexPath: indexPath)
        
        return cell
    }
    

    //  编辑任务名按钮
    @IBAction func editTaskNameAction(sender: AnyObject) {
//        self.editTask(sender)
        let indexPath = self.currentCellIndexPath(sender as! UIView)
        
        let taskModle = self.planModel.taskArr[indexPath.row-1]
        
        taskModle.name = "1"
    }
    
    //  编辑任务时间按钮
    @IBAction func editTaskTimeAction(sender: AnyObject) {
        self.editTask(sender)
        
    }
    
    //  编辑项目风险按钮
    @IBAction func editTaskRiskAction(sender: AnyObject) {
        self.editTask(sender)
        
    }
    
    func editTask(sender: AnyObject) {
//        let indexPath = self.currentCellIndexPath(sender as! UIView)
        
        
    }
    
    func currentCellIndexPath(sender: UIView) -> NSIndexPath {
        
        if sender.isKindOfClass(UITableViewCell) {
            
            let cell = sender as! UITableViewCell
            return self.tableView.indexPathForCell(cell)!
            
        } else {
            return self.currentCellIndexPath(sender.superview!)
            
        }
        
    }
    
}
