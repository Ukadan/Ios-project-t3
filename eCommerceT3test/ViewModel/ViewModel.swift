//
//  ViewModel.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

@MainActor final class ViewModel: ObservableObject {
    @Published var isButtonSelected = [true, false, false, false, false, false]
    @Published var isLikes = false
    @Published var isFiltered = false
    @Published var isShowProductDetail = false
    @Published var isShowCart = false
    
    @Published var quantity: Int = 2
    
    var mockCart: MockCart = Bundle.main.decode(mockCartURL)

    
    func changeCartItem(increment: Int) {
        if increment == -1 {
            if quantity > 0 {
                quantity += increment
            }
        } else {
            quantity += increment
        }
    }
}
