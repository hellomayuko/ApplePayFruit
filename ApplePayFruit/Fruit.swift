//
//  Fruit.swift
//  ApplePayFruit
//
//  Created by Inoue, Mayuko on 4/27/15.
//  Copyright (c) 2015 Inoue, Mayuko. All rights reserved.
//

import UIKit

struct Fruit {
    let image: UIImage?
    let title: String
    let price: NSDecimalNumber
    let description: String
    let shippingPrice: NSDecimalNumber = NSDecimalNumber(string: "1.0")
    
    init(image: UIImage?, title: String, price: NSDecimalNumber, description: String) {
        self.image = image
        self.title = title
        self.price = price
        self.description = description
    }
    
    func total() -> NSDecimalNumber {
        return price.decimalNumberByAdding(shippingPrice)
    }
    
    
    var priceString: NSString {
        let dollarFormatter: NSNumberFormatter = NSNumberFormatter()
        dollarFormatter.minimumFractionDigits = 2;
        dollarFormatter.maximumFractionDigits = 2;
        return dollarFormatter.stringFromNumber(price)!
    }
    
}


