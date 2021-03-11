//
//  FacultiesTableViewCell.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class FacultiesTableViewCell: UITableViewCell {

    @IBOutlet weak var imageofFaculty: UIImageView!
    @IBOutlet weak var nameofFaculty: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
