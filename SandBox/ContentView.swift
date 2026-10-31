//
//  ContentView.swift
//  SandBox
//
//  Created by Aleksander Kozin on 30/10/2569 BE.
//

import SwiftUI

import WandFoundation
import WandLocation
import WandMotion
import WandNetwork

struct ContentView: SwiftUI.View {
    
    let columns = [GridItem()]
    
    let items = [
        "Foundation",
        "Location",
        "Motion",
    ]
    
    var body: some SwiftUI.View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(0..<items.count, id: \.self) {
                    Text(items[$0])
                }
                
            }
        }
        .scrollBounceBehavior(.always)
        .onAppear {
            
            .satisfied | NWPath.one | CLLocation.one | CMAltitudeData.one | .all { (wand: Core) in
                self.learn(from: wand)
            }
            
        }
    }
    
    func learn(from: Core) {
        
//        let data: Int = wand.hashValue
    }
}

#Preview {
    ContentView()
}
