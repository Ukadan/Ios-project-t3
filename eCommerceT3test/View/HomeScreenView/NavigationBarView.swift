//
//  NavigationBarView.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation
import SwiftUI

struct HomeNavigationBarView: View {

//    @State var isFiltered: Bool
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        HStack {
            Spacer()
            Image("locationPin")
                .foregroundColor(orangeColor)
            
            Text("Zihuatanejo, Gro")
                .font(.system(size: 15, weight: .medium, design: .default))
                
                
            
            Image(systemName: "chevron.down")
            Spacer()
            
            Button {
                viewModel.isFiltered.toggle()
            } label: {
                Image("filterIcon")
            }
        }
        .padding(.horizontal)
    }
}
