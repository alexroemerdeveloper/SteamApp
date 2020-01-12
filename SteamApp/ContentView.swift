//
//  ContentView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

// sample data.....

var top    = ["Card1","Card2"]
var middle = ["m1","m2","m3"]
var bottom = ["b1","b2","b3"]
var detail = ["d1","d2"]

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            Home().tabItem {
                Image("home")
            }
            
            Text("Search").tabItem {
                Image("search")
            }
            
            Text("Person").tabItem {
                Image("person")
            }
            
            Text("Menu").tabItem {
                Image("menu")
            }
    
        }
        .accentColor(.white)
        .preferredColorScheme(.dark)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
