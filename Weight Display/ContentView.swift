//
//  ContentView.swift
//  Weight Display
//
//  Created by Daniel Carlson on 8/30/22.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Apple Watch Weight App")
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Text("138 lbs").foregroundColor(.green).font(.system(size: 70, weight: .bold))
                Text("Updated 1 min ago")
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.white)
                Button {
                    print("pressed")
                } label: {
                    Text("Calculate Weight")
                        .frame(width: 240, height: 50)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding()
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
