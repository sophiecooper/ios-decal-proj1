//
//  ToDoTableViewCell.swift
//  ToDoApp2
//
//  Created by Sophie Cooper on 2/29/16.
//  Copyright © 2016 iOS Decal. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ToDoTextLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
