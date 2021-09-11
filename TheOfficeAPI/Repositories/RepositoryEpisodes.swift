import Foundation
import Alamofire

class RepositoryEpisodes: ProtocolEpisode {
    
    static func getEpisodeAll() {
        AF.request(TheOfficeApiEndpoints.urlEpisodes, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
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
    
    static func getEpisodeById() {
        <#code#>
    }
    
    static func getEpisodeRandomly() {
        <#code#>
    }
    
    
}
