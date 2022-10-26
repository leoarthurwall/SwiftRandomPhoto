//
//  ContentView.swift
//  SwiftRandomPhoto
//
//  Created by Leo Wall on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                    Color.purple
                        .ignoresSafeArea()
        Text("Hello, Random Photo App!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
