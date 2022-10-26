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
        NavigationView {
            VStack {
                Image(systemName: "photo")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 300)
                
                Button(action: {
                    //do something
                }, label: {
                    Text("New Image!")
                        .bold()
                        .frame(width: 250, height: 40)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(8)
                })
            }
            .navigationTitle("Random iPhoto")
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
