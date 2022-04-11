//
//  TableViewCell.swift
//  TableViewController
//
//  Created by Student G225 07 on 28/03/2022.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var catName: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var catStrength: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
    }
}
