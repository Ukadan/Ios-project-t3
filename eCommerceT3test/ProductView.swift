//
//  ProductView.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct ProductView: View {
    
    let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    var body: some View {

            VStack {
                  ProductNavigationBarView()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(mockItem.images, id: \.self) {
                            ProductDetailItem(mockImage: $0)
                        }
                    }
                }
                
                Spacer()
                
                ProductDetailDescriptionView(mockItem: mockItem)
    
            }
            .background(backColor)
            .navigationBarHidden(true)
            .ignoresSafeArea(.all, edges: .bottom)
        }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
