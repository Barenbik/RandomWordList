//
//  ContentView.swift
//  RandomWordList
//
//  Created by Tony Sharples on 09/04/2025.
//

import SwiftUI

struct ContentView: View {
    struct WordItem: Identifiable {
        let id = UUID()
        let word: String
    }
    
    @State var wordItems: [WordItem] = []

    var body: some View {
        VStack {
            List {
                ForEach(wordItems) { item in
                    Text(item.word)
                }
            }

            Button("Add to List", systemImage: "plus.app.fill", action: addWordItemToList)
        }
    }
    
    func addWordItemToList() {
        let words = ["Hello", "World", "Swift", "UI", "Kit"]
        
        wordItems.append(WordItem(word: words.randomElement() ?? ""))
    }
}

#Preview {
    ContentView()
}
