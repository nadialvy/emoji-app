//
//  RandomColor.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import Foundation

import SwiftUI

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1)
        )
    }
}
