//
//  Emoji.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiList: View {
    var allEmojis: [Emoji] = EmojiProvider.allEmojis()
    @State private var userSearchInput = "";
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(allEmojis) { emoji in
                    NavigationLink{
                        Text("hai")
                    } label: {
                        EmojiRow(emoji: emoji)
                    }
                }
            }
            .searchable(text: $userSearchInput, prompt: "What's emoji you're looking for?")
            .refreshable {
                    
            }
            .navigationTitle("Emoji")
        }
    }
}

#Preview {
    EmojiList()
}