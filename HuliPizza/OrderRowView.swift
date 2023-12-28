//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack {
            HStack {
                Text("Your Order item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format:.number)
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
