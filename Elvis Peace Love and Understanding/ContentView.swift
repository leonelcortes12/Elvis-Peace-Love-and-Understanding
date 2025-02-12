//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Student1 on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var mesage = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.black)
                .padding()
                .frame(width: 300, height: 300)
            Text(mesage)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    mesage = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    mesage = "Love"
                    imageName = "heart"
                }
                Button("Understanding ") {
                    mesage = "Understanding "
                    imageName = "lightbulb"
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
            

#Preview {
    ContentView()
}

