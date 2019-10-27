//
//  FoodTableViewCell.swift
//  tableViewCustomCellApp
//
//  Created by Shan Indrakumar on 2019-10-25.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit
import Foundation

class FoodTableViewCell: UITableViewCell {
    var nameLabel: UILabel?
    var caloriesLabel: UILabel?
    var iconImageView: UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style:style,reuseIdentifier:reuseIdentifier)
    }
    required init?(coder: NSCoder) {
        //should implement this if you're going to use InterfaceBuilder to design your cell
        fatalError("init(coder:) hass not been implemented")
    }
    
    func setCell(name: String,calories:String, image:String){
        self.nameLabel=UILabel(frame: CGRect(x:10,y:10,width:140,height:24))
        self.nameLabel?.text=name
        
        self.caloriesLabel=UILabel(frame:CGRect(x:150,y:10,width:140,height:24))
        self.caloriesLabel?.text="\(calories) cal"
        
        self.iconImageView=UIImageView(image: UIImage(named:image))
        self.iconImageView?.frame=CGRect(x:270,y:2,width:40,height:40)
        
        self.contentView.addSubview(self.nameLabel!)
        self.contentView.addSubview(self.caloriesLabel!)
        self.contentView.addSubview(self.iconImageView!)
    }
}

