//
//  AdminProductTableViewCell.swift
//  Ecommerce
//
//  Created by May Derbas on 2020-07-11.
//  Copyright © 2020 May Derbas. All rights reserved.
//

import UIKit

class AdminProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDetailsLabel: UILabel!
    
    var product: Product?{
    didSet {
        self.updateUI()
        
        }
        
    }
    func updateUI()
    {
        productImageView?.image = product!.image
        productNameLabel?.text = product!.name
        productPriceLabel?.text = " $ \(product!.price) "
        productDetailsLabel?.text = product!.details
    }
    
}
