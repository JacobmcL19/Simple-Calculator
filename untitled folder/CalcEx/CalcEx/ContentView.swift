//
//  ContentView.swift
//  CalcEx
//
//  Created by Jacob McLean on 4/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("First")
            Text("Second")
            Text("Third")
            Text("Fourth")
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
