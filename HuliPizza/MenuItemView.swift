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
      HStack {
        Text("Margherita Huli Pizza")
          .font(.title)
          .fontWeight(.semibold)
          //          .foregroundColor(Color("Surf"))
//          .foregroundStyle(.black)
          .foregroundStyle(.ultraThickMaterial)
          .padding(.leading)
//          .frame(minWidth: 150, maxWidth: 1000, maxHeight: 3000)
//          .background(
//            .linearGradient(
//              colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading,
//              endPoint: .trailing), in: Capsule())

        if let image = UIImage(named: "0x_lg") {
          Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .padding([.top, .bottom], 5)
            //                    .clipShape(RoundedRectangle(cornerRadius:10))
            .cornerRadius(15)
//            .shadow(color: .teal, radius: 5, x: 8, y: 8)
        } else {
          Image("surfboard_lg")
            .resizable()
            .scaledToFit()
            .rotationEffect(.degrees(180))
        }
      }
      .background(
        .linearGradient(
          colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading,
          endPoint: .trailing), in: Capsule())
      .shadow(color: .teal, radius: 5, x: 8, y: 8)

      VStack(alignment: .leading) {

        ScrollView {
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fermentum porta est, non maximus libero varius in. Nullam quis risus sed lectus elementum elementum. Nullam sit amet mi vel odio sollicitudin commodo. Mauris fermentum nibh magna, ut blandit velit malesuada quis. Mauris scelerisque dictum mi nec molestie. Vivamus in semper."
          )
          .font(.custom("Georgia", size: 18, relativeTo: .body))
        }

      }
    }
  }
}

#Preview {
  MenuItemView()
}
