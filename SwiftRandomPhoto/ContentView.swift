//
//  ContentView.swift
//  SwiftRandomPhoto
//
//  Created by Leo Wall on 26/10/22.
//

import SwiftUI

//https://random.imagecdn.app/500/500


struct ContentView: View {
    
    
    var body: some View {
        ZStack {
                    Color.purple
                        .ignoresSafeArea()
        Text("Hello, Random Photo App!")
            .padding()
        }
        Image("")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250.0, height: 250.0, alignment: .center)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
