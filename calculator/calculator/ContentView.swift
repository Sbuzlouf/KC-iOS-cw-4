//
//  ContentView.swift
//  calculator
//
//  Created by Sumaya Buzlouf on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
  
    @State var grade = ""
    @State var level = ""
    
    var body: some View {
        ZStack {
            Color.red
                .opacity(0.6)
                .ignoresSafeArea()
            
            VStack {
                Text("Calculator")
                    .font(Font.custom("Mishafi Reikgular", size: 30))
                    .padding()
                    
                Spacer()
                
                Image("calculator")
                     .resizable()
                     .scaledToFit()
                     .padding()
                              
                TextField("ENTER YOUR GRADE", text: $grade)
                     .padding()
                     .background(.white)
                               
                Text("calculate my grade")
                    .frame(width:200,height:60)
                    .font(.system(size:20))
                    .background(.black)
                    .foregroundColor(.white)
                    .onTapGesture {
                        if (Int(grade) ?? 0) >= 90 {
                            level = "امتياز"
                        }
                        else if (Int(grade) ?? 0) >= 80 {
                            level = "جيد جداً"
                        }
                        else if (Int(grade) ?? 0) >= 70 {
                            level = "جيد"
                        }
                        else if (Int(grade) ?? 0) >= 60 {
                            level = "مقبول"
                        }
                        else {
                            level = "راسب"
                        }
                    }
                
                    Text("لقد حصلت على")
                        .font(.system(size: 30))
                
                    Spacer()
            
                    Text(level)
                        .font(Font.custom("Mishafi Regular", size: 80))
                        .foregroundColor(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
