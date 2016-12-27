//
//  CartTableViewCell.swift
//  iCafe
//
//  Created by Cao Do Nguyen on 9/26/16.
//  Copyright © 2016 HTGSoft. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var img_itemImage: UIImageView!
    
    @IBOutlet weak var lbl_itemName: UILabel!
    
    @IBOutlet weak var lbl_itemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
