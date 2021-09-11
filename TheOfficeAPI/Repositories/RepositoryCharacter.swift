import Foundation
import Alamofire

class RepositoryCharacters: ProtocolCharacter {
    static func getCharacterAll() {
        AF.request(TheOfficeApiEndpoints.urlCharacters, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            do {
            let quotes = try JSONDecoder().decode(Quote.self, from: data)
                //Cambiar sentencia para mostrar en objetos UI
                print("Episodes == \(quotes)")
            } catch {
                print("Error decoding Episodes == \(error)")
            }
        }
    }
    
    static func getCharacterById() {
        <#code#>
    }
    
    static func getCharacterRandomly() {
        <#code#>
    }
    
    
}
