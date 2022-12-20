//
//  ProductDetailItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct ProductDetailItem: View {
    
    let mockImage: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 290, height: 340, alignment: .center)
            
            AsyncImage(url: URL(string: mockImage)) { image in
                image.resizable()
                // .padding(.horizontal, 16)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 310)
                    .cornerRadius(20)
                
            } placeholder: {
                ProgressView()
            }
        }
        .padding(.horizontal, 40)
    }
}
