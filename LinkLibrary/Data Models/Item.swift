//
//  Item.swift
//  LinkLibrary
//
//  Created by Christopher Fonseka on 06/10/2024.
//

import Foundation
import SwiftData

@Model
class Item {
    var url: URL
    var title: String
    var author: String?
    var rating: Int?
    var tags: [Tag]

    init(
        url: URL,
        title: String,
        author: String? = nil,
        rating: Int? = nil,
        tags: [Tag] = []
    ) {
        self.url = url
        self.title = title
        self.author = author
        self.rating = rating
        self.tags = tags
    }
}
