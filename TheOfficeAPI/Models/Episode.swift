import Foundation

struct Episode: Decodable {
    var id: String?
    var title: String?
    var description: String?
    var airdate: Date?
}
enum CodingKeysEpisode: String, CodingKey {
    case
        id = "Id",
        title = "Title",
        description = "Description",
        airdate = "Airdate"
}
