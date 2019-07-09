//
//  TableViewCell.swift
//  LandmarkBook
//
//  Created by Berkay Köse on 24.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var placeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
