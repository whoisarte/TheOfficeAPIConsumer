import Foundation

// MARK: - Datum
struct DataClassQuote: Codable {
    let id, content: String
    let character: Character
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case content, character
        case v = "__v"
    }
}

struct DataClassEpisode: Codable {
    let id, title, datumDescription: String
    let writer, director: Director
    let airDate: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case title
        case datumDescription = "description"
        case writer, director, airDate
        case v = "__v"
    }
}

// MARK: - DataClass
struct DataClassEpisodeRandom: Codable {
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
