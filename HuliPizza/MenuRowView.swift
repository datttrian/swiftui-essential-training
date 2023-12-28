//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct MenuRowView: View {
    var item:Int = 2
    var body: some View {
        HStack(alignment:.top,spacing:15) {
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment:.leading) {
                Text("Margherita")
                Text("Description")
            }
        }
    }
}

#Preview {
    MenuRowView()
}
