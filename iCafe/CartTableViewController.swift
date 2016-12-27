//
//  CartTableViewController.swift
//  iCafe
//
//  Created by Cao Do Nguyen on 9/26/16.
//  Copyright © 2016 HTGSoft. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {

    var arr_CartItem = [Order]();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadCartItem()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadCartItem() {
        let img_hotChocolate = UIImage(named: "chocolateIcon")
        let order_hotChocolate = Order(OrderName: "Hot Chocolate", OrderImage: img_hotChocolate!, OrderPrice: 35000)
        
        let img_hotChocolateMocha = UIImage(named: "chocolateMochaIcon")
        let order_hotChocolateMocha = Order(OrderName: "Hot Chocolate Chill Mocha", OrderImage: img_hotChocolateMocha!, OrderPrice: 40000)
        
        arr_CartItem += [order_hotChocolateMocha, order_hotChocolate]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr_CartItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "CartTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CartTableViewCell

        // Configure the cell...
        
        let item = arr_CartItem[indexPath.row]
        
        cell.img_itemImage.image = item.image
        cell.lbl_itemName.text = item.name
        cell.lbl_itemPrice.text = String(item.price)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
