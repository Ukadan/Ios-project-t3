//
//  LikeItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct LikeItem: View {
    
    var isLiked: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 1, y: 1)
                
            
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
                .foregroundColor(.red)
        }
    }
}

struct LikeItem_Previews: PreviewProvider {
    static var previews: some View {
        LikeItem(isLiked: false)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
