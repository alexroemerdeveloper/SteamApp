//
//  Media.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct Media: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Images")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(detail,id: \.self) { i in
                        Image(i)
                    }
                }
            }
            .padding(.top,15)
            
            Text("Videos")
            
            ZStack{
                Image("d3")
                Button(action: {
                    
                }) {
                    Image(systemName: "play.circle.fill").font(.largeTitle)
                }
                .foregroundColor(.white)
                
            }
            .padding(.top, 15)
            
            Spacer()
            
        }
        .padding(.horizontal, 25)
        .foregroundColor(Color.white.opacity(0.6))
    }
}

struct Media_Previews: PreviewProvider {
    static var previews: some View {
        Media()
    }
}
