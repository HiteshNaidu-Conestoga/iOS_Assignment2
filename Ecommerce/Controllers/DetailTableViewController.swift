//
//  DetailTableViewController.swift
//  Ecommerce
//
//  Created by May Derbas on 2020-07-14.
//  Copyright © 2020 May Derbas. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleLabel: UILabel!
    
    @IBOutlet weak var productPriceLabel: UILabel!
    
    @IBOutlet weak var productDetailLabel: UILabel!
    
    var product: Product? 
    
    override func viewDidLoad() {
        title = "Product Detail"
        
        // set product to our imageview and labels,
        
        productImageView.image = product!.image
        productTitleLabel.text = product!.name
        productPriceLabel.text = " $ \(product!.price) "
        productDetailLabel.text = product!.details
        
    }
    
    @IBAction func logoutButton(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    
    // when the cell is selcted, it will not be highlighted
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
            return nil                                // we prevent any selection in detail page
        }
}
