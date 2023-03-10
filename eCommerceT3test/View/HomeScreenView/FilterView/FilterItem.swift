//
//  FilterItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct FilterItem: View {
    
    let item: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray)
                .foregroundColor(.clear)
                .frame(maxHeight: 37)
                

            
            HStack {
            Text(item)
                    .padding(.leading)
                    .font(.system(size: 18, weight: .regular, design: .default))
                
            Spacer()
            
            Image(systemName: "chevron.down")
                    .padding(.trailing)
                    .foregroundColor(priceColor)
            }
        }
    }
}

struct FilterItem_Previews: PreviewProvider {
    static var previews: some View {
        FilterItem(item: "Samsung")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
