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
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Huli Pizza Company")
            Image("surfBanner")
            Text("Order Pizza")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
