//
//  ContentView.swift
//  HuliPizza
//
//  Created by datttrian on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            OrderView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
//        .colorScheme(.dark)
//        .background(Color.black)
}
