//
//  ContentView.swift
//  best track
//
//  Created by Sumaya Buzlouf on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var Track = "question"
    
    
    var body: some View {
        
        VStack {
            Text("CHOOSE THE BEST TRACK!")
                .padding()
            
            Image(Track)
                .resizable()
                .frame(width: 250, height: 250)
                .padding()
            
            
            VStack {
            Capsule()
                .fill(Color.indigo)
                .frame(width: 200, height: 50)
                .overlay(Text("iOS"))
                .onTapGesture {
                    Track = "apple"
                }
                
            Capsule()
                .fill(Color.cyan)
                .frame(width: 200, height: 50)
                .overlay(Text("Gamedev"))
                .onTapGesture {
                    Track = "unity"
                }
            
            Capsule()
                .fill(Color.mint)
                .frame(width: 200, height: 50)
                .overlay(Text("Web"))
                .onTapGesture {
                    Track = "vs code"
                }
            
            Capsule()
                .fill(Color.green)
                .frame(width: 200, height: 50)
                .overlay(Text("Android"))
                .onTapGesture {
                    Track = "android"
                }
            }.onLongPressGesture {
                Track = "question"
            }
               
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
