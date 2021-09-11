import Foundation

struct Quote: Codable {
    let id, content: String
    let character: Character
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case content, character
        case v = "__v"
    }
}
