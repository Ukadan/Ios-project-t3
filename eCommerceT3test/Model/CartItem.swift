//
//  CartItem.swift
//  eCommerceT3test
//
//  Created by Ali on 14.12.2022.
//

import Foundation

struct MockCartItem: Decodable, Identifiable, Equatable {
    let id: Int
    let image: String
    let price: Int
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case image = "images"
        case price
        case title
    }
    
    
}

struct MockCart: Codable, Identifiable {
    let id: String
    let delivery: String
    let total: Int
    var cart: [MockCartItem]
    
    enum CodingKeys: String, CodingKey {
        case id
        case delivery
        case total
        case cart = "basket"
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
