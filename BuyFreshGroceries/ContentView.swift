//
//  ContentView.swift
//  BuyFreshGroceries
//
//  Created by Denidu Gamage on 2024-10-31.
//

import SwiftUI


struct ContentView: View {
    @State private var shopItems = [
        ShopItem(name: "Broccoli", price: 8.00, quantity: 0),
        ShopItem(name: "Banana", price: 10.00, quantity: 0),
        ShopItem(name: "Avocado", price: 12.00, quantity: 0),
        ShopItem(name: "Chicken", price: 20.00, quantity: 0),
        ShopItem(name: "Water", price: 5.00, quantity: 0),

    ]
    @State var showCartView = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing:20) {
                List{
                    ForEach(shopItems.indices){items in
                        HStack{
                            Image(shopItems[items].name.lowercased())
                                .resizable()
                                .frame(width: 80, height: 80)
                            
                            VStack{
                                Text(shopItems[items].name)
                                
                                Text("$\(String(format:"%.2f",shopItems[items].price))")
                                
                            }
                            Stepper("", value: $shopItems[items].quantity, in: 0...10)
                            
                            Text("\(shopItems[items].quantity)")
                        }
                    }
                }
                
                
                Button("Checkout") {
                    showCartView.toggle()
                }.buttonStyle(.bordered)
                    .tint(.green)
                    .font(.title3)
                
            }
            .navigationTitle("Buy Fresh Groceries")
            .padding()
            .navigationDestination(isPresented: $showCartView) {
                       CartView(shopItems: $shopItems)
        }
        
        }
    }
}

#Preview {
    ContentView()
}
