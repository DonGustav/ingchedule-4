//
//  RevisaTareaTableViewCell.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 11/30/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class RevisaTareaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var tarea: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
