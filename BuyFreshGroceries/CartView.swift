//
//  CartView.swift
//  BuyFreshGroceries
//
//  Created by Denidu Gamage on 2024-10-31.
//

import SwiftUI

struct CartView: View {
    
    @Binding var shopItems:[ShopItem]
    @State  var total: Double = 0.0
    
    var body: some View {
        VStack{
            if total == 0 {
                Text("Cart is Empty")
            }else{
                Text("Total: $\(String(format:"%.2f", total))")
                                    .font(.headline)
                                    .padding()
            }
        }.onAppear {
            calculateTotal()
        }
        
        
    }
    
    func calculatePurchasedItems(item:ShopItem)  -> Double {
        return item.price * Double(item.quantity)
    }
    
    func calculateTotal(){
        total = 0.0
        for item in shopItems {
            total += calculatePurchasedItems(item: item)
        }

    }
    
}

//#Preview {
//    CartView()
//}
