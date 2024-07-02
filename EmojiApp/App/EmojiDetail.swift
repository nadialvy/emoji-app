//
//  EmojiDetail.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import SwiftUI

struct EmojiDetail: View {
    var data: Emoji
    var bgColor: Color
    @State var isExpanded = false
    
    var body: some View {
        ScrollView{
            Text(data.emoji)
                .font(.system(size: 200))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 400)
                .background(bgColor)
            
            VStack(alignment: .leading){
                Text("Emoji Name: \(data.name)")
                    .font(.system(.title))
                    .fontWeight(.bold)
                
                Text(data.description)
                    .padding(.vertical, 4)
                
                GroupBox{
                    DisclosureGroup(
                        isExpanded: $isExpanded,
                        content: {
                            VStack(alignment: .leading) {
                                ForEach(data.facts) { fact in
                                    Text("- \(fact.text)")
                                        .padding(.vertical, 2)
                                }
                            }.padding(.top)
                        },
                        label: {
                            HStack{
                                Image(systemName: "sparkles.square.filled.on.square")
                                    .foregroundStyle(Color.black)
                                Text("Unique Facts About Emoji")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                           
                        }
                    )
                }.padding(.top)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    EmojiDetail(
        data: EmojiProvider.allEmojis().first!,
        bgColor: .red
    )
}
