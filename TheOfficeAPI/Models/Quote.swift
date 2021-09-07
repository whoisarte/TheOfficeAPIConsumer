import Foundation

struct Quote: Decodable {
    var id: String?
    var content: String?
    var character: String?
}

enum CodingKeysQuote: String, CodingKey {
    case
        id = "Id",
        content = "Content",
        character = "Character"
}
