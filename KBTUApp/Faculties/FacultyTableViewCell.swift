//
//  FacultyTableViewCell.swift
//  KBTUApp
//
//  Created by Тамирлан Абаев   on 11.03.2021.
//

import UIKit

class FacultyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameFaculty: UILabel!
    @IBOutlet weak var imageFaculty: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
