import Foundation

struct Character: Decodable {
    var id: String?
    var firstname: String?
    var lastname: String?
}
enum CodingKeysCharacter: String, CodingKey {
   case id = "Id",
    firstname = "Firstname",
    lastname = "Lastname"
}
