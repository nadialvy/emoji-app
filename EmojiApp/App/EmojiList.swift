//
//  Emoji.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiList: View {
    @State var allEmojis: [Emoji] = EmojiProvider.allEmojis()
    
    @State private var searchText = ""
    @State private var isActiveSearch = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(searchResult) { emoji in
                    NavigationLink{
                        EmojiDetail(data: emoji, bgColor: .random)
                    } label: {
                        EmojiRow(emoji: emoji, bgColor: .random)
                    }
                }
            }
            .searchable(
                text: $searchText,
                prompt: "What's emoji you're looking for?"
            ){
                if searchText.count >= 2{
                    ForEach(searchResult) { emoji in
                        Text(emoji.name).searchCompletion(emoji.name)
                    }
                }
            }
            .refreshable {
                //randomize it (create illussion there is new data)
                allEmojis = EmojiProvider.allEmojis().shuffled()
            }
            .navigationTitle("Emoji")
            .overlay{
                if searchResult.isEmpty{
                    ContentUnavailableView("No Result", systemImage: "magnifyingglass", description: Text("Check the spelling or try a new search"))
                }
            }
        }
    }
    
    var searchResult:[Emoji] {
        if searchText.isEmpty{
            return allEmojis
        }else {
            return allEmojis.filter { emoji in
                emoji.name.lowercased().contains(searchText.lowercased()) ||
                emoji.description.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    
}

#Preview {
    EmojiList()
}
