//
//  GroupOrder.swift
//  iCafe
//
//  Created by Cao Do Nguyen on 9/25/16.
//  Copyright © 2016 HTGSoft. All rights reserved.
//

import UIKit

public class Order: NSObject {
    var name: String
    var image: UIImage!
    var price: Int
    
    init(OrderName name: String, OrderImage image: UIImage, OrderPrice price: Int) {
        self.name = name
        self.image = image
        self.price = price
    }
}
