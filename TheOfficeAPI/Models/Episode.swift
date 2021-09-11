import Foundation

struct Episode: Codable {
    let id, title, quoteDescription, airDate: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case title
        case quoteDescription = "description"
        case airDate
        case v = "__v"
    }
}
