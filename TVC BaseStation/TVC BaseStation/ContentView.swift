//
//  ContentView.swift
//  TVC BaseStation
//
//  Created by Thomas Dhome on 23/01/2020.
//  Copyright © 2020 Thomas Dhome. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("TVC Rocketry Base Station")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                HStack{
                    VStack(alignment: .leading){
                        Text("Pressure").font(.subheadline)
                        Spacer()
                        Text("Temperature").font(.subheadline)
                        Spacer()
                        Text("Servos").font(.subheadline)
                        Spacer()
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Map").font(.subheadline)
                        MapView().frame(width: geometry.size.width / 2)
                    }
                }
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
