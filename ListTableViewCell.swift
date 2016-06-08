//
//  ListTableViewCell.swift
//  WordList
//
//  Created by Kenta Okuda on 6/8/16.
//  Copyright © 2016 Kenta Okuda. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var japaneseLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
