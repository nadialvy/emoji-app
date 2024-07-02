//
//  Emoji.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiList: View {
    var allEmojis: [Emoji] = EmojiProvider.allEmojis()
    @State private var userSearchInput = ""
    var colorList: [Color] = [.red, .blue, .green, .yellow, .pink, .brown, .gray, .orange, .cyan, .black, .indigo, .mint, .teal]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(allEmojis) { emoji in
                    NavigationLink{
                        EmojiDetail(data: emoji)
                    } label: {
                        EmojiRow(emoji: emoji, bgColor: colorList.randomElement()!)
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
