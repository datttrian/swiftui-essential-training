//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem:Bool = false
    @Binding var item:MenuItem
    @State var presentAlert:Bool = false
    @ObservedObject var orders:OrderModel
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
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
                
                if let image = UIImage(named: "\(item.id)_lg") {
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
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
                
            }
            Button {
                presentAlert = true
            } label: {
                Spacer()
                Text(item.price, format: .currency(code: "USD")).bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .disabled(item.id < 0)
            .padding()
            .background(.red, in: Capsule())
            .foregroundStyle(.white)
            .padding(5)
            .alert("Buy a \(item.name)", isPresented: $presentAlert){
                Button("No", role: .cancel){}
                Button("Yes") {
                    addedItem = true
                    orders.addOrder(item, quantity: 1)
                }
                Button("Make it a double!") {
                    addedItem = true
                    orders.addOrder(item, quantity: 2)
                }
            }
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
}
