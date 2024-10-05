//
//  ContentView.swift
//  LinkLibrary
//
//  Created by Christopher Fonseka on 06/10/2024.
//

import SwiftData
import SwiftUI

struct ContentView: View {

    @Query var items: [Item]
    @Environment(\.modelContext) private var context

    var body: some View {
        VStack {
            ForEach(items) { item in
                Text(item.url.absoluteString)
            }
        }
        .onAppear(perform: createDebugDataIfNeeded)
    }
}

extension ContentView {

    func createDebugDataIfNeeded() {
        guard items.isEmpty else { return }

        let tag = Tag(name: "SwiftUI")

        let item = Item(
            url: URL(string: "https://www.youtube.com/watch?v=lm2Q3BU9dsg")!,
            title: "Deep dive into SwiftUI",
            author: "Chris Eidhof",
            rating: 5,
            tags: [tag]
        )

        context.insert(item)
    }
}

#Preview {
    ContentView()
}
