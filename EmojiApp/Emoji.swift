//
//  EmojiResp.swift
//  EmojiApp
//
//  Created by Nadia Lovely on 02/07/24.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var text: String
}


struct Emoji: Identifiable {
    var id = UUID()
    var emoji: String
    var name: String
    var description: String
    var facts: [Fact]
}

// MARK: - Dummy Data
struct EmojiProvider {
    static func allEmojis() -> [Emoji] {
        let EmojiData = [
            Emoji(
                emoji: "👾",
                name: "Alien Monster",
                description: "A friendly-looking, tentacled space creature with two eyes.",
                facts: [Fact(text: "Often used in conversations about gaming."), Fact(text: "Represents something extraterrestrial.")]
            ),
            Emoji(
                emoji: "🎨",
                name: "Artist Palette",
                description: "A palette used by an artist when painting, to store and mix paint colors.",
                facts: [Fact(text: "Symbolizes creativity and art."), Fact(text: "Commonly used to talk about painting.")]
            ),
            Emoji(
                emoji: "🥑",
                name: "Avocado",
                description: "A pear-shaped avocado, sliced in half to show its yellow-green flesh and large brown pit.",
                facts: [Fact(text: "Often associated with healthy eating."), Fact(text: "Popular in guacamole recipes."), Fact(text: "Known as a superfood.")]
            ),
            Emoji(
                emoji: "🐿️",
                name: "Chipmunk",
                description: "A chipmunk, a small rodent with puffy cheeks.",
                facts: [Fact(text: "Symbolizes small and cute animals."), Fact(text: "Known for storing food in its cheeks.")]
            ),
            Emoji(
                emoji: "🤯",
                name: "Exploding Head",
                description: "A yellow face with an open mouth, the top of its head exploding in the shape of a brain-like mushroom cloud.",
                facts: [Fact(text: "Used to express shock or disbelief."), Fact(text: "Represents mind-blowing information.")]
            ),
            Emoji(
                emoji: "🦊",
                name: "Fox",
                description: "A friendly, cartoon-styled faced of a fox, the cunning canine, looking straight ahead.",
                facts: [Fact(text: "Symbolizes cleverness and cunning."), Fact(text: "Often used in discussions about wildlife.")]
            ),
            Emoji(
                emoji: "😀",
                name: "Grinning Face",
                description: "A yellow face with simple, open eyes and a broad, open smile, showing upper teeth and tongue on some platforms.",
                facts: [Fact(text: "Represents happiness and positivity."), Fact(text: "Commonly used in cheerful conversations.")]
            ),
            Emoji(
                emoji: "🍟",
                name: "French Fries",
                description: "Thin-cut, golden-brown French fries, served in a red carton, as at McDonald’s.",
                facts: [Fact(text: "Popular fast food item."), Fact(text: "Often associated with burgers and fast food meals.")]
            ),
            Emoji(
                emoji: "🐣",
                name: "Hatching Chick",
                description: "A baby chicken (chick), hatching from an egg and seeing the world for the first time.",
                facts: [Fact(text: "Symbolizes new beginnings."), Fact(text: "Often used during Easter.")]
            ),
            Emoji(
                emoji: "🌭",
                name: "Hot Dog",
                description: "The cooked sausage of a hot dog in a sliced bun and drizzled with yellow mustard, as eaten at a baseball game.",
                facts: [Fact(text: "Popular at American baseball games."), Fact(text: "Often associated with barbecues and summer.")]
            ),
            Emoji(
                emoji: "🪁",
                name: "Kite",
                description: "A diamond-shaped kite with a tail.",
                facts: [Fact(text: "Symbolizes outdoor activities."), Fact(text: "Often flown during windy days.")]
            ),
            Emoji(
                emoji: "🔍",
                name: "Magnifying Glass Tilted Left",
                description: "A classic magnifying glass, as used to view small objects, with its lens pointed left.",
                facts: [Fact(text: "Used to represent searching or investigating."), Fact(text: "Commonly associated with detectives.")]
            ),
            Emoji(
                emoji: "🏓",
                name: "Ping Pong",
                description: "A paddle and ping pong ball used in the sport of table tennis.",
                facts: [Fact(text: "Symbolizes the sport of table tennis."), Fact(text: "Popular recreational activity.")]
            ),
            Emoji(
                emoji: "🍕",
                name: "Pizza",
                description: "A slice of pepperoni pizza, topped with black olives on Google. WhatsApp adds green pepper, Samsung white onion.",
                facts: [Fact(text: "Popular Italian dish."), Fact(text: "Often associated with parties and gatherings.")]
            ),
            Emoji(
                emoji: "🧩",
                name: "Puzzle Piece",
                description: "Puzzle Piece was approved as part of Unicode 11.0 in 2018 under the name “Jigsaw Puzzle Piece” and added to Emoji 11.0 in 2018.",
                facts: [Fact(text: "Represents problem-solving."), Fact(text: "Commonly used in contexts of fitting things together.")]
            ),
            Emoji(
                emoji: "🚀",
                name: "Rocket",
                description: "A rocket being propelled into space.",
                facts: [Fact(text: "Symbolizes space exploration."), Fact(text: "Often used to indicate rapid growth or success.")]
            ),
            Emoji(
                emoji: "📌",
                name: "Round Pushpin",
                description: "A thumbtack (drawing pin), as used to pin documents on a bulletin (notice) board. Depicted at a 45° angle with its red, flat head to the upper right.",
                facts: [Fact(text: "Used to pin important notes."), Fact(text: "Often seen on bulletin boards.")]
            ),
            Emoji(
                emoji: "⛩️",
                name: "Shinto Shrine",
                description: "A shrine used for the Japanese Shinto religion. This emoji generally displays the torii, which is the gate to the Shinto Shrine.",
                facts: [Fact(text: "Represents Japanese culture."), Fact(text: "Often associated with spiritual and religious contexts.")]
            ),
            Emoji(
                emoji: "🥰",
                name: "Smiling Face with Hearts",
                description: "A yellow face with smiling eyes, a closed smile, rosy cheeks, and several hearts floating around its head.",
                facts: [Fact(text: "Symbolizes love and affection."), Fact(text: "Often used in romantic contexts.")]
            ),
            Emoji(
                emoji: "😈",
                name: "Smiling Face with Horns",
                description: "A face, usually purple, with devil horns, a wide grin, and eyes and eyebrows scrunched downward on most platforms.",
                facts: [Fact(text: "Represents mischievous behavior."), Fact(text: "Often used in playful contexts.")]
            ),
            Emoji(
                emoji: "🤩",
                name: "Star-Struck",
                description: "A yellow face with a broad, open smile, showing upper teeth on most platforms, with stars for eyes, as if seeing a beloved celebrity.",
                facts: [Fact(text: "Symbolizes amazement or admiration."), Fact(text: "Often used to express excitement.")]
            ),
            Emoji(
                emoji: "🗽",
                name: "Statue of Liberty",
                description: "The Statue of Liberty, often used as a depiction of New York City.",
                facts: [Fact(text: "Represents freedom and democracy."), Fact(text: "Iconic symbol of New York City.")]
            ),
            Emoji(
                emoji: "🌻",
                name: "Sunflower",
                description: "A sunflower, a tall, round flower with large yellow petals. Depicted as a single, vertical sunflower with a large, dark-brown center on a green stem.",
                facts: [Fact(text: "Symbolizes positivity and happiness."), Fact(text: "Often associated with summer.")]
            ),
            Emoji(
                emoji: "🧸",
                name: "Teddy Bear",
                description: "A classic teddy bear, as snuggled by a child when going to sleep.",
                facts: [Fact(text: "Symbolizes comfort and childhood."), Fact(text: "Often used in contexts of care and affection.")]
            ),
            Emoji(
                emoji: "🎾",
                name: "Tennis",
                description: "A tennis racket (racquet) with a tennis ball. Only a ball is shown on Apple, LG, Twitter, Facebook, and Mozilla platforms.",
                facts: [Fact(text: "Represents the sport of tennis."), Fact(text: "Popular recreational and competitive activity.")]
            ),
            Emoji(
                emoji: "🗼",
                name: "Tokyo Tower",
                description: "The Tokyo Tower is the second-tallest building in Japan, located in Minato, Tokyo.",
                facts: [Fact(text: "Symbolizes Tokyo and Japanese culture."), Fact(text: "Inspired by the Eiffel Tower.")]
            ),
            Emoji(
                emoji: "🦄",
                name: "Unicorn",
                description: "The face of a unicorn, a mythical creature in the form of a white horse with a single, long horn on its forehead.",
                facts: [Fact(text: "Represents magic and fantasy."), Fact(text: "Often used in contexts of uniqueness.")]
            ),
            Emoji(
                emoji: "🍉",
                name: "Watermelon",
                description: "A slice of watermelon, showing its rich pink flesh, black seeds, and green rind.",
                facts: [Fact(text: "Symbolizes summer and refreshment."), Fact(text: "Popular fruit in many cultures.")]
            ),
            Emoji(
                emoji: "🚴🏽‍♀️",
                name: "Woman Biking",
                description: "The female version of the 🚴 Bicyclist emoji.",
                facts: [Fact(text: "Represents physical activity and fitness."), Fact(text: "Often used in contexts of exercise.")]
            ),
            Emoji(
                emoji: "👩🏽‍💻",
                name: "Woman Technologist",
                description: "A woman behind a computer screen, working in the field of technology.",
                facts: [Fact(text: "Symbolizes women in technology."), Fact(text: "Often used in contexts of programming and IT.")]
            ),
            Emoji(
                emoji: "🗺",
                name: "World Map",
                description: "A rectangular map of the world. Generally depicted as a paper map creased at its folds, Earth’s surface shown in green on blue ocean.",
                facts: [Fact(text: "Represents travel and exploration."), Fact(text: "Commonly used in contexts of geography and adventure.")]
            ),
        ]
        
        return EmojiData
    }
}
