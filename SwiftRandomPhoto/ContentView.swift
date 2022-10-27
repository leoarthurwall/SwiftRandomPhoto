//
//  ContentView.swift
//  SwiftRandomPhoto
//
//  Created by Leo Wall on 26/10/22.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var image: Image?
    
    func fetchNewImage() {
        guard let url = URL (string: "https://random.imagecdn.app/500/500")
    else {
        return
    }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                guard let uiImage = UIImage(data: data) else {
                    return
                }
                self.image = Image(uiImage: uiImage)
            }
            }
            task.resume()
        }
}

class RandColor: ObservableObject {
    @Published var color: Color?
    
    func colorSelector() {
        
    }
}




struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
   let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .green,
        .orange,
        .purple,
        .systemGray,
        .systemMint,
        .systemTeal,
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(colors[7]).ignoresSafeArea()
                VStack {
                    Text("Random iPhoto")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()

                    if let image = viewModel.image {
                        image
                            .resizable()
                            .foregroundColor(.blue)
                            .frame(width: 300, height: 300)
                    } else {
                    Image(systemName: "photo")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 300)
                    }
                    Spacer()
                    
                    Button(action: {
                        viewModel.fetchNewImage()
                        
                    }, label: {
                        Text("New Image!")
                            .bold()
                            .frame(width: 250, height: 50)
                            .foregroundColor(.gray)
                            .background(.white )
                            .cornerRadius(8)
                    })
                    Spacer()

                }
            }
                    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

