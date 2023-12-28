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
//                    .clipShape(RoundedRectangle(cornerRadius:10))
                    .cornerRadius(10)
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
//                    .bold()
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Surf"))

                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fermentum porta est, non maximus libero varius in. Nullam quis risus sed lectus elementum elementum. Nullam sit amet mi vel odio sollicitudin commodo. Mauris fermentum nibh magna, ut blandit velit malesuada quis. Mauris scelerisque dictum mi nec molestie. Vivamus in semper.")
//                        .font(.body)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
