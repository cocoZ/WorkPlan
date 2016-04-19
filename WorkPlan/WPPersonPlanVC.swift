//
//  WPPersonPlanVC.swift
//  WorkPlan
//
//  Created by 张可可 on 16/4/18.
//  Copyright © 2016年 张可可. All rights reserved.
//

import UIKit

class WPPersonPlanVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: Array<WPPlanModel> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.registerNib(UINib.init(nibName: "WPPlanCell", bundle: nil), forCellReuseIdentifier: "WPPlanCell")
        
    }
    
    

    @IBAction func addNewPlan(sender: AnyObject) {
        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count;
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("WPPlanCell", forIndexPath: indexPath) as! WPPlanCell
        let model = self.dataSource[indexPath.row]
        
        cell.planNameLabel.text = model.name
        cell.deadlineLabel.text = model.deadline
        
        return cell;
    }
    

}
