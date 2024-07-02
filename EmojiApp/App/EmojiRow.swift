//
//  EmojiRow.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiRow: View {
    var emoji: Emoji
    var bgColor: Color
    
    var body: some View {
        HStack(alignment: .top, spacing: 16){
            Text(emoji.emoji)
                .frame(width: 80, height: 80)
            // bakalan keganti dengan color random
                .background(bgColor)
                .cornerRadius(10)
                .font(.system(.largeTitle))
            VStack(alignment: .leading){
                Text(emoji.name)
                    .font(.system(.headline))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(emoji.description)
                    .font(.system(.subheadline))
                    .lineLimit(3)
            }
        }
    }
}

#Preview {
    EmojiRow(
        emoji: EmojiProvider.allEmojis().last!,
        bgColor: .red
    )
}
