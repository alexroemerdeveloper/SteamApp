//
//  DetailView.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    @State private var selected = "About"
    
    var body: some View {
        
        VStack(spacing : 0) {
            
            Image("Header")
            
            ZStack{
    
                VStack(spacing: 20) {
                    
                    HStack(spacing: 25) {
                        
                        Button(action: {
                            self.selected = "About"
                        }) {
                            Text("About")
                                .padding(.vertical,15)
                                .padding(.horizontal, 22)
                            
                        }
                        .background(self.selected == "About" ? Color("Color") : Color.clear)
                        .foregroundColor(self.selected == "About" ? .white : Color.gray)
                        .cornerRadius(15)
                        
                        Button(action: {
                            self.selected = "Media"
                        }) {
                            Text("Media").padding(.vertical,15).padding(.horizontal, 22)
                        }
                        .background(self.selected == "Media" ? Color("Color") : Color.clear)
                        .foregroundColor(self.selected == "Media" ? .white : Color.gray)
                        .cornerRadius(15)
                        
                    }
                    .padding(.top, 15)
                    
                    if self.selected == "About" {
                        About()
                    } else {
                        Media()
                    }
                }
                
            }
            .background(Rounded().fill(Color.black))
            .padding(.top, -15)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
