//
//  TopView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    @State private var show = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Featured")
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    
                    ForEach(top,id: \.self) { i in
                        
                        Image(i).onTapGesture {
                            self.show.toggle()
                        }
                    }
                }
                
            }
            .padding(.top,15)
            
        }
        .sheet(isPresented: $show) {
            Detail()
        }
    }
}

struct topView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
