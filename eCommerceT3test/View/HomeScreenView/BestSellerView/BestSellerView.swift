//
//  BestSellerView.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct BestSellerView: View {
    
    let bestSellers: [BestSeller]
//    let isLiked: Bool
    
    var body: some View {
   //     ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach(bestSellers) {
                    BestSellerItem(bestSeller: $0)
                }
            }
       // }
    }
}
