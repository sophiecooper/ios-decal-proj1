//
//  ToDoListTableViewCell.swift
//  ToDoApp
//
//  Created by Sophie Cooper on 2/26/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ToDoItemText: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
