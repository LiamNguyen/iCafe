//
//  OrderTableViewCell.swift
//  iCafe
//
//  Created by Cao Do Nguyen on 9/25/16.
//  Copyright © 2016 HTGSoft. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var img_cellImage: UIImageView!
    
    @IBOutlet weak var lbl_orderName: UILabel!
    
    @IBOutlet weak var lbl_orderPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
