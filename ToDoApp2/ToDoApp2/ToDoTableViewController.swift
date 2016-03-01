//
//  ViewController.swift
//  ToDoApp2
//
//  Created by Sophie Cooper on 2/29/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    
    
    
    
    let model = [" ", " hellolsdlaksjdlkajskldjlkasjdlkajsdkjaskdjlaksjdlajsd ", "h1"]
    
    var CompletedTasks = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        cell.ToDoTextLabel.text = model[indexPath.row]
        return cell
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
            //view.reload()?
            CompletedTasks += 1
            
            
        }
    }


}

