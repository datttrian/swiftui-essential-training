//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
            } else {
                Image("surfboard_lg")
            }
            Text("Margherita")
            Text("Description")
        }
    }
}

#Preview {
    MenuItemView()
}
