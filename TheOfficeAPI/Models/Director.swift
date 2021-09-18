import Foundation

struct Director: Codable {
    let id, name: String
    let role: Role
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, role
        case v = "__v"
    }
}

enum Role: String, Codable {
    case director = "Director"
    case writer = "Writer"
    case writerActor = "Writer/Actor"
    case writerDirector = "Writer/Director"
}
