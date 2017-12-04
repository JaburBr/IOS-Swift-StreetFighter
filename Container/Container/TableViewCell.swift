//
//  TableViewCell.swift
//  Container
//
//  Created by Leandro Jabur Monteiro on 01/01/17.
//  Copyright © 2017 Leandro Jabur Monteiro. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var contentTextLabel: UILabel!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var textDescription:String?
        
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
