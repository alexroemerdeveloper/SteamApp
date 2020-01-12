//
//  BottomView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct BottomView : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Recommended")
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 15){
                    ForEach(bottom,id: \.self) { i in
                        Image(i)
                    }
                }
            
            }
            .padding(.top,15)
        }
    }
}


struct bottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
