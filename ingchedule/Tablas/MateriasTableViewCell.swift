//
//  MateriasTableViewCell.swift
//  ingchedule
//
//  Created by Roberto Salvador Juarez on 11/28/19.
//  Copyright © 2019 scolastic. All rights reserved.
//

import UIKit

class MateriasTableViewCell: UITableViewCell {
    

    @IBOutlet weak var etiqueta: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //backgroundColor = .cyan
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
