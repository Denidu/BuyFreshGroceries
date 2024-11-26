//
//  ShopItem.swift
//  BuyFreshGroceries
//
//  Created by Denidu Gamage on 2024-10-31.
//

import Foundation

class ShopItem{
    var name: String
    var price:Double
    var quantity:Int
    
    init(name: String, price: Double, quantity: Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}
