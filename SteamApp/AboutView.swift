//
//  AboutView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct About: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Welcome to San Francisco, the birthplace of the technological revolution. Play as young Marcus, a brilliant hacker, and join DedSec, the most celebrated hacker group. Your goal: the largest hacking operation in history.")
                .padding(.vertical, 15)
            
            HStack{
                Spacer()
                Button(action: {
                    
                }) {
                    Text("More About This Game >")
                }
            }
            
            Text("System Requirements")
                .padding(.vertical, 15)
        
            Button(action: {
                
            }) {
                HStack(spacing: 10) {
                    Image("min")
                    Text("Minimum Requirements")
                }
            }
            
            Button(action: {
                
            }) {
                HStack(spacing: 10) {
                    Image("max")
                    Text("Maximum Requirements")
                }
            }
            .padding(.top, 15)
            
            Spacer()
        }
        .padding(.horizontal,25)
        .foregroundColor(Color.white.opacity(0.6))
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
