//
//  MenuGridView.swift
//  HuliPizza
//
//  Created by datttrian on 02/01/2024.
//

import SwiftUI

struct MenuGridView: View {
    var menu:[MenuItem]
    @State var selectedItem:MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(spacing: 39), count: 3)
    var body: some View {
        VStack {
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        MenuItemTileView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu)
}
