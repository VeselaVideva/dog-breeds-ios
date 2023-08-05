//
//  ContentView.swift
//  dog-breeds-ios
//
//  Created by Vesela Videva on 1.01.23.
//

import SwiftUI

struct ContentView: View {
    @State var image = "breed1"
    @State var breed = "Japanese Shiba Inu"
    @State var zStackColor: Color? = .random
    
    var body: some View {
        ZStack {
            Color
                .random
                .ignoresSafeArea()
            
            VStack {
                Image(image)
                    .resizable()
                    .cornerRadius(22)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 16)
                Text(breed)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    
                VStack {
                    HStack {
                        Text("Care")
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Image(systemName: "star")
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    HStack {
                        Text("Training")
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Image(systemName: "star")
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }.font(.subheadline)
                Spacer()
                Button("Change breed") {
                    changeBreed()
                }
                .font(.title2)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)            .background(.black)
                .foregroundColor(.white)
                .cornerRadius(32)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
        }
        .background(zStackColor)
    }
    
    func changeBreed() {
        let num = Int.random(in: 1...3)
        
        // Change breed image
        image = "breed" + String(num)
            
        // Change breed name
        switch num {
        case 1:
            breed = "Japanese Shiba Inu"
        case 2:
            breed = "German Shepherd"
        case 3:
            breed = "Husky"
        default:
            break
        }
        
        // Change background color
        zStackColor = .random
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static var random: Color {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1)
    }
}
