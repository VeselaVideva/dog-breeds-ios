//
//  ContentView.swift
//  dog-breeds-ios
//
//  Created by Vesela Videva on 1.01.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .yellow
                .ignoresSafeArea()
            
            VStack {
                Image("akita")
                    .resizable()
                    .cornerRadius(22)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .shadow(radius: 16)
                Text("Japanese Shiba Inu")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.leadinghalf.filled")
                    Image(systemName: "star")
                }
                Spacer()
                Button("Change card") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.headline)
                .fontWeight(.bold)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(22)
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
