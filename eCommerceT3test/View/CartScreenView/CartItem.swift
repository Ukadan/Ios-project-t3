//
//  CartItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct CartItem: View {
    
    let mockCartImage: String
    let mockCartTitle: String
    let mockCartPrice: Int
    
    let mockCartItem: MockCartItem
    @Binding var mockCartItems: [MockCartItem]
    let onDelete: (IndexSet) -> ()
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: mockCartImage)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 88, height: 88)
                    .cornerRadius(10)
                
            } placeholder: {
                ProgressView()
            }

            VStack(alignment: .leading, spacing: 15) {
                Text(mockCartTitle)
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .lineLimit(2)
            
                
                Text(mockCartPrice.formatted(.currency(code: "USD")))
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .foregroundColor(orangeColor)
            }
            Spacer()
            CartStepper()
            
            Button {
                if let index = mockCartItems.firstIndex(of: mockCartItem) {
                    onDelete(IndexSet(integer: index))
                }
            } label: {
                Image("trashLogo")
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}
