//
//  RoundedShape.swift
//  SteamApp
//
//  Created by Alexander Römer on 12.01.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct Rounded: Shape {
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 25, height: 25))
        return Path(path.cgPath)
    }
    
}
