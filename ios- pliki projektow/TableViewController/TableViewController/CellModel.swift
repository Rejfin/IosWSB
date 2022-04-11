//
//  CellModel.swift
//  TableViewController
//
//  Created by Student G225 07 on 28/03/2022.
//

import Foundation
import UIKit

class CellModel {
    var catName: String
    var catView: UIImageView
    var catStrength: String
    
    init(catName: String, imageView: UIImageView, catStrength: String) {
        self.catName = catName
        self.catView = imageView
        self.catStrength = catStrength
    }
}
