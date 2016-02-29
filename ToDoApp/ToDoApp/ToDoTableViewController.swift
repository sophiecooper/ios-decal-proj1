//
//  ViewController.swift
//  ToDoApp
//
//  Created by Sophie Cooper on 2/26/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    let toDoListModel = ["test1", "test2", "test3"]
    
    
    @IBAction func UnwindToToDoListView (segue : UIStoryboardSegue) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // sets the number of rows in the table
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListModel.count
    }
    
    // sets the contents for each cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let itemCell = tableView.dequeueReusableCellWithIdentifier("toDoCell", forIndexPath: indexPath) as! ToDoListTableViewCell
        itemCell.ToDoItemText.text = toDoListModel[indexPath.row]
        
        return itemCell
    }


}

