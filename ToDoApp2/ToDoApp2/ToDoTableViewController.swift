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
    

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ToDoCell", forIndexPath: indexPath) as! ToDoTableViewCell
        cell.ToDoTextLabel.text = model[indexPath.row]
        return cell
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }


}

