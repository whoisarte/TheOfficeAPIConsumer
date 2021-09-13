import Foundation

class Data {
    struct QuoteData: Codable {
        let _id, content: String
        let character: Character
        let __v: Int

        enum CodingKeys: String, CodingKey {
            case _id = "_id"
            case content = "content"
            case character = "character"
            case __v = "__v"
        }
    }
    
    struct CharacterData: Codable {
        let id, firstname, lastname: String
        let v: Int

        enum CodingKeys: String, CodingKey {
            case id = "_id"
            case firstname, lastname
            case v = "__v"
        }
    }
    
    struct EpisodeData: Codable {
        let id, title, dataDescription, writer: String
        let director, airDate: String
        let v: Int

        enum CodingKeys: String, CodingKey {
            case id = "_id"
            case title
            case dataDescription = "description"
            case writer, director, airDate
            case v = "__v"
        }
    }
}
