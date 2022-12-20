//
//  HotSaleNewItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct HotSaleNewItem: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 27, height: 27)
                .foregroundColor(orangeColor)
            Text("New")
                .foregroundColor(.white)
                .font(.system(size: 10, weight: .bold, design: .default))
        }
    }
}

struct HotSaleNewItem_Previews: PreviewProvider {
    static var previews: some View {
        HotSaleNewItem()
    }
}
