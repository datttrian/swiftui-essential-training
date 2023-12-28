//
//  ContentView.swift
//  HuliPizza
//
//  Created by datttrian on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1, 2, 3, 4, 6]
    var showOrders:Bool = true
    var body: some View {
        VStack {
            HeaderView()
            if showOrders
            {
                OrderView(orders: orders)
            }
            else
            {
                MenuItemView()
                MenuView()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
//        .colorScheme(.dark)
//        .background(Color.black)
}
