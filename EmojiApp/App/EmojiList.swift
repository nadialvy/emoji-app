//
//  Emoji.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiList: View {
    @State var allEmojis: [Emoji] = EmojiProvider.allEmojis()
    var colorList: [Color] = [.red, .blue, .green, .yellow, .pink, .brown, .gray, .orange, .cyan, .black, .indigo, .mint, .teal]
    
    @State private var searchText = ""
    @State private var isActiveSearch = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(searchResult) { emoji in
                    NavigationLink{
                        EmojiDetail(data: emoji)
                    } label: {
                        EmojiRow(emoji: emoji, bgColor: colorList.randomElement()!)
                    }
                }
            }
            .searchable(
                text: $searchText
            ){
                if searchText.count >= 2{
                    ForEach(searchResult) { emoji in
                        Text(emoji.name).searchCompletion(emoji.name)
                    }
                }
            }
            .refreshable {
                //randomize it (create illussion there is new data :) )
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
            return allEmojis.filter{
                $0.name.contains(searchText) || $0.description.contains(searchText)
            }
        }
    }
    
    
}

#Preview {
    EmojiList()
}
