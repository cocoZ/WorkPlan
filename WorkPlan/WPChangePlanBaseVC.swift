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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("xxx", forIndexPath: indexPath)
        
        return cell
    }
    

}
