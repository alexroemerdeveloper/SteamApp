//
//  HomeView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            HStack{
                
                Text("$89")
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("Cart")
                }
                
            }
            .overlay(Image("Logo"))
            
            ScrollView(.vertical, showsIndicators: false) {
                TopView()
                    .padding(.vertical,15)
                MiddleView()
                BottomView()
                    .padding(.top, 15)
            }
  
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
