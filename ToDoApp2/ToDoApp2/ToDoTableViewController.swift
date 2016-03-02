//
//  ViewController.swift
//  ToDoApp2
//
//  Created by Sophie Cooper on 2/29/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit


class ToDoTableViewController: UITableViewController {
    
    
    var model:[(item: String, date: NSDate)] = []
    var checkedTasks : [Bool] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(10.0, target: self, selector: "removeExpiredItems", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func UnwindToToDoTableViewController(segue : UIStoryboardSegue) {
        
    }

    //show items in tableView
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ToDoCell", forIndexPath: indexPath) as! ToDoTableViewCell
        cell.ToDoTextLabel.text = model[indexPath.row].0
        if checkedTasks[indexPath.row] == false {
            cell.accessoryType = .None
        }
        else if checkedTasks[indexPath.row] == true {
            cell.accessoryType = .Checkmark
        }
        return cell
    }
    
    
    //selecting items 
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .Checkmark
            {
                cell.accessoryType = .None
                checkedTasks[indexPath.row] = false
            }
            else
            {
                cell.accessoryType = .Checkmark
                checkedTasks[indexPath.row] = true
            }
        }    
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    
    //used to delete actions
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            //update number of completed tasks, remove from model
            print(indexPath.row)
            self.model.removeAtIndex(indexPath.row)
            self.checkedTasks.removeAtIndex(indexPath.row)
            self.tableView.reloadData()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier != "segueToAddItem") {
            let viewController : StatsViewController = segue.destinationViewController as! StatsViewController
            var numTasks = 0
            for i in 0...(self.checkedTasks.count-1) {
                if checkedTasks[i] == true {
                    numTasks += 1
                }
            }
            viewController.TaskItems = numTasks
        }
    }
    
    //make sure all items are less than 24 hours old
    func removeExpiredItems() {
        let currentTime = NSDate()
        if (self.model.count >= 1) {
            for index in 0...(self.model.count-1) {
                let expireDate = model[index].1.dateByAddingTimeInterval((60*60*24))
                if (currentTime.compare(expireDate) == NSComparisonResult.OrderedDescending) {
                    self.model.removeAtIndex(index)
                    self.checkedTasks.removeAtIndex(index)
                }
            }
        }
    }
    

}

