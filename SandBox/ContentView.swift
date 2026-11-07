//
//  ContentView.swift
//  SandBox
//
//  Created by Aleksander Kozin on 30/10/2569 BE.
//

import SwiftUI

import WandFoundation

import CoreLocation
import WandLocation

import CoreMotion
import WandMotion

import WandNetwork

import CoreNFC
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
            
            //Experimental syntax
//            let id = 42
//            (id | GitHubAPI.Repo.get | CLLocation.one | CMMagnetometerData.one) | .all & { (tag: NFCNDEFTag) in
//
//                
//            } ? { (error: Error) in
//                
//            }

            //Experimental syntax
//            let id = 42
//            (id | GitHubAPI.Repo.get | CLLocation.one | CMMagnetometerData.one) | .all {
//                
//                //How much times this will be called?
//                
//                let hash = ($0.get() as GitHubAPI.Repo).id //tag.hashValue
//                let message: NFCNDEFMessage = URL(string: "https://example.com/" + hash)|
//                
//                $0 | NFCNDEFTag.write(message) {
//                    print("done: " + $0)
//                }
//                
//            } |? { (error: Error) in
//                
//            }
                
            
        }
    }
    
    func learn(from: Core) {
        
//        let data: Int = wand.hashValue
    }

}


extension Ask<Core> {
    
    @inline(__always)
    public
    static
    var all: Ask<Core> {
        //__unsafe_unretained
        .Option(for: .all)
    }
    
}

#Preview {
    ContentView()
}
