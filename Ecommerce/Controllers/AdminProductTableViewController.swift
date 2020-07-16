//
//  AdminProductTableViewController.swift
//  Ecommerce
//
//  Created by May Derbas on 2020-07-11.
//  Copyright © 2020 May Derbas. All rights reserved.
//

import UIKit

class AdminProductTableViewController: UITableViewController {
    
    //Mark: - Data Model
    
    var storeProducts: [StoreProducts] = StoreProducts.getAllProducts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = " Online Store"
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 500
        
    }

    // table view data source
    // Number of section in Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return storeProducts.count      //number of categories
    }
    
    // Number of rows in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storeProducts[section].products.count    //number of products in section
    }
    
    // Set cell data
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdminProductCell", for: indexPath) as! AdminProductTableViewCell
        let productLine = storeProducts[indexPath.section]  // a section or category
        let products = productLine.products                 // products in that category
        let product = products[indexPath.row]               // a product in specific index
        cell.product = product                              // assign product to cell
        
        // can be done by : cell.product = storeProducts[indexPath.section].products[indexPath.row]
        return cell
    }
    // Set section title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = storeProducts[section]
        return productLine.category
    }
    
// when a row at indexPath is selected
    var selectedItem : Product?
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let product = storeProducts[indexPath.section].products[indexPath.row]
      selectedItem = product
      performSegue(withIdentifier: "showProductDetail", sender: nil)
    }
    //prepare for segue, navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // when there is more than one segue, we specify it by its identifier
        if segue.identifier == "showProductDetail" {
            let detailTableViewController = segue.destination as! DetailTableViewController
        // we assign the selected item to product in DetailTableViewController
            detailTableViewController.product = selectedItem
        }
        
        
        
    }
    
    @IBAction func logoutButtom(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    
}
