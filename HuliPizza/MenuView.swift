//
//  MenuView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct MenuView: View {
    var menu:[MenuItem]
    var body: some View {
        ScrollView {
            ForEach(menu) { item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView(menu:MenuModel().menu)
}
