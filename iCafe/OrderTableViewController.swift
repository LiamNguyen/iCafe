//
//  OrderTableViewController.swift
//  iCafe
//
//  Created by Cao Do Nguyen on 9/25/16.
//  Copyright © 2016 HTGSoft. All rights reserved.
//

import UIKit

class OrderTableViewController: UITableViewController {

    var arr_Order = [Order]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadOrder()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadOrder() {
        let img_Cappuchino = UIImage(named: "cappuchinoIcon_resized")
        let order_Cappuchino = Order(OrderName: "Cappuchino", OrderImage: img_Cappuchino!, OrderPrice: 45000)
        
        let img_Latte = UIImage(named: "latteIcon")
        let order_Latte = Order(OrderName: "Latte", OrderImage: img_Latte!, OrderPrice: 40000)
        
        let img_CookieIceBlended = UIImage(named: "cookieIcon")
        let order_CookieIceBlended = Order(OrderName: "Cookie Ice Blended", OrderImage: img_CookieIceBlended!, OrderPrice: 40000)
        
        let img_hotChocolate = UIImage(named: "chocolateIcon")
        let order_hotChocolate = Order(OrderName: "Hot Chocolate", OrderImage: img_hotChocolate!, OrderPrice: 35000)
        
        let img_hotChocolateMocha = UIImage(named: "chocolateMochaIcon")
        let order_hotChocolateMocha = Order(OrderName: "Hot Chocolate Chill Mocha", OrderImage: img_hotChocolateMocha!, OrderPrice: 40000)
        
        let img_saltChocolate = UIImage(named: "saltChocolateIcon")
        let order_saltChocolate = Order(OrderName: "Frappuchino", OrderImage: img_saltChocolate!, OrderPrice: 45000)
        
        let img_macchiato = UIImage(named: "macchiatoIcon")
        let order_macchiato = Order(OrderName: "Coconut Milk Mocha Macchiato", OrderImage: img_macchiato!, OrderPrice: 50000)
        
        let img_flatWhite = UIImage(named: "flatWhiteIcon")
        let order_flatWhite = Order(OrderName: "Flat White", OrderImage: img_flatWhite!, OrderPrice: 30000)
        
        arr_Order += [order_Cappuchino, order_Latte, order_CookieIceBlended, order_hotChocolate, order_hotChocolateMocha, order_saltChocolate, order_macchiato, order_flatWhite]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr_Order.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OrderTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! OrderTableViewCell

        let order = arr_Order[indexPath.row]
        
        // Configure the cell...
        
        cell.lbl_orderName.text = order.name
        cell.img_cellImage.image = order.image
        cell.lbl_orderPrice.text = String(order.price)
        

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
