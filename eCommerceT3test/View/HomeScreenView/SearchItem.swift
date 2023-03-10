//
//  SearchItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct SearchItem: View {
    
    @State var searchText = ""
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .frame(height: 30)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(orangeColor)
                        .padding(.leading, 20)
                    
                    TextField(text: $searchText) {
                        Text("Search")
                    }
                    .foregroundColor(.black)
                }
            }
            
            Button {
                print("Start Searching")
            } label: {
                Image("qrSearch")
            }
        }
        .padding(.horizontal, 20)
    }
}

struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
