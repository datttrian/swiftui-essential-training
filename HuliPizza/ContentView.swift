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
            
            
            Text("Huli Pizza Company")
            Image("surfBanner").resizable().scaledToFit()
            Text("Order Pizza").font(.title)
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
