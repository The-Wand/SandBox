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
import WandNFC
import WandURL
import Wand_Weather

struct ContentView: SwiftUI.View {
    
    let columns = [GridItem()]
    
    let items = [
        "Foundation",
        "Location",
        "Motion",
        "Network",
        "NFC",
        "UI",
        "URL",
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
        .padding()
        .onAppear {
            
            NWPath.Status.satisfied | NWPath.one | CLLocation.one | CMAltitudeData.one | .all { (wand: Core) in
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
