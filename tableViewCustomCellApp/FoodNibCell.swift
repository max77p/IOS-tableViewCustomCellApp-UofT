//
//  FoodNibCell.swift
//  tableViewCustomCellApp
//
//  Created by Shan Indrakumar on 2019-10-27.
//  Copyright © 2019 CS2680. All rights reserved.
//
import Foundation
import UIKit

class FoodNibCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    func setCell(name: String, calories: String, image: String){
        
        self.nameLabel.text=name
        self.caloriesLabel.text="\(calories) cal"
        self.iconImageView.image=UIImage(named: image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
