import Foundation

struct Character: Codable {
    let id, firstname, lastname: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case firstname, lastname
        case v = "__v"
    }
}
