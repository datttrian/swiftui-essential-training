//
//  OrderView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct OrderView: View {
    @Binding var orders: [OrderItem]
    var body: some View {
        VStack {
            ZStack(alignment:.top) {
                
                ScrollView {
                    ForEach(orders, id: \.id) { order in
                        Text(order.item.name)
                        //OrderRowView(order: order)
                            .padding(4)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                    
                }
                .padding(.top, 80)
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    Label {
                        Text(59.99, format: .currency(code: "USD"))
                    } icon: {
                        Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                        
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
                
                
            }
            .padding()
            Button("Delete Order") {
                if !orders.isEmpty{orders.removeLast()}
            }
            .padding(5)
            .background(.regularMaterial,in:Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
    }
}

#Preview {
    OrderView(orders: .constant(testOrders))
}
