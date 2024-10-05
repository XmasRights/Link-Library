//
//  Tag.swift
//  LinkLibrary
//
//  Created by Christopher Fonseka on 06/10/2024.
//

import SwiftData
import SwiftUI

@Model
class Tag {
    var name: String

    init(name: String) {
        self.name = name
    }
}
