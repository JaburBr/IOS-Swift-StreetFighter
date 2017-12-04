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
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var msgSwitch: UISwitch!
    
    var textDescription:String?
    var delegateViewController: UIViewController?
        
    @IBAction func switchAlert(_ sender: UISwitch) {
        
        if sender.isOn {
            let alert = UIAlertController(title: "Combos", message: "Voce realmente completou todos?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Sim", style: .default, handler:{_ in sender.isOn = true }))
            alert.addAction(UIAlertAction(title: "Nao", style: .default, handler:{_ in sender.isOn = false }))
            self.delegateViewController?.present(alert, animated: true, completion: nil)
            sender.isOn =  false
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
   }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
