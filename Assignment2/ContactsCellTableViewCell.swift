//
//  ContactsCellTableViewCell.swift
//  Assignment2
//
//  Created by Evans Owamoyo on 02.07.2021.
//

import UIKit

class ContactsCellTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setNameAndLabel(with contact: Contact) {
        nameLabel.text = contact.name
        phoneLabel.text = contact.telephone
    }

}
