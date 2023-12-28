//
//  OrderView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int] = [1,2,3,4,6]
    var body: some View {
        VStack {
            HeaderView()
            Label {
                Text(59.99, format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
        }
            HStack {
                // Label("Cart", systemImage: "cart")
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders,id:\.self){ order in
                }
            }
        }
    }
}


#Preview {
    OrderView()
}
