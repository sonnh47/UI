//
//  FoodTableViewCell.swift
//  MyFoodTracker
//
//  Created by Son on 9/8/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var idView: UILabel!
    @IBOutlet weak var nameView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
