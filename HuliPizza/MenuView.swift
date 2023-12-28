//
//  MenuView.swift
//  HuliPizza
//
//  Created by datttrian on 28/12/2023.
//

import SwiftUI

struct MenuView: View {
  var body: some View {
    ScrollView {
      ForEach(1...25, id: \.self) { item in
        MenuRowView(item: item)
      }
    }
  }
}

#Preview {
  MenuView()
}
