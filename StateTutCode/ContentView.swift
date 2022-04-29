//
//  ContentView.swift
//  StateTutCode
//
//  Created by HAL-9001 on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "Now it is green..."
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Go red !") {
                        backgroundColor = .red
                        myTitle = "Now it is red ..."
                        count += 1
                    }
                    Button("Go purple !") {
                        backgroundColor = .purple
                        myTitle = "Now it is purple ..."
                        count += 1
                    }
                    
                }
            }
            .foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
