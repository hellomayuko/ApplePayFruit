//
//  FruitListViewController.swift
//  ApplePayFruit
//
//  Created by Inoue, Mayuko on 4/27/15.
//  Copyright (c) 2015 Inoue, Mayuko. All rights reserved.
//

import UIKit

class FruitListViewController: UITableViewController {
    
    var fruitList = [
        Fruit(   image: UIImage(named: "Apple"),
            title: "Apple",
            price: 1.00,
            description: "The best fruit of them all."),
        
        Fruit(   image: UIImage(named: "Pear"),
            title: "Pear",
            price: 2.00,
            description: "The knockoff of the best fruit ever"),
        
        Fruit(   image: UIImage(named: "Orange"),
            title: "Orange",
            price: 3.00,
            description: "Get your Vitamin C here!"),
        
        Fruit(   image: UIImage(named: "Banana"),
            title: "Banana",
            price: 4.00,
            description: "If you have a pet minion, this is for you"),
        
        Fruit(   image: UIImage(named: "Grape"),
            title: "Grapes",
            price: 5.00,
            description: "What are you, a greek god or something?"),
        
        Fruit(   image: UIImage(named: "Pineapple"),
            title: "Pineapple",
            price: 6.00,
            description: "For our tropical fans."),
    ]
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = fruitList[indexPath.row]
                (segue.destinationViewController as! BuyFruitViewController).fruit = object
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FruitCell
        
        let object = fruitList[indexPath.row]
        cell.titleLabel.text = object.title
        cell.priceLabel.text = "$" + (object.priceString as String)
        cell.fruitImage.image = object.image
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
}

