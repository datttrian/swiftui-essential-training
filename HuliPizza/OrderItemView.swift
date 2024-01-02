//
//  OrderItemView.swift
//  HuliPizza
//
//  Created by datttrian on 02/01/2024.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem:OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    var body: some View {
        VStack {
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients" + (doubleIngredient ? " Yes" : " No"))
                Stepper(value: $quantity, in: 1...10) {
                    Text("\(quantity) " + (quantity == 1 ? "pizza" : "pizzas"))
                }
            }
        }
    }
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
