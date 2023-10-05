//
//  Wine.swift
//  ShareLink
//
//  Created by Eric on 05/10/2023.
//

import SwiftUI

struct Wine {
    var label: String
    var name: String
    var winery: String
    var region: String
    var flag: String
    var variety: String
    var price: Double
    var rating: Int
    
    var labelImage: Image {
        if let image = UIImage(named: label) {
            return Image(uiImage: image)
        } else {
            return Image(.label)
        }
    }
    
    var localPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: price)) ?? "n/a"
    }
    
    static var sample: Wine {
        Wine(label: "QwamQwmt.jpg",
             name: "Qwam Qwnt",
             winery: "Nk'mip",
             region: "Okanagan Valley",
             flag: "🇨🇦",
             variety: "Chardonnay",
             price: 28.99,
             rating: 9)
    }
}
