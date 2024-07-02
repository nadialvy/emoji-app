//
//  EmojiDetail.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiDetail: View {
    var data: Emoji
    var body: some View {
        Text(data.name)
    }
}

#Preview {
    EmojiDetail(
        data: EmojiProvider.allEmojis().first!
    )
}
