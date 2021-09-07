import Foundation
import Alamofire

class APIRequestCharactersService {
    
    
    fileprivate var baseURL: String = "https://officeapi.dev/api/characters/"
    
    func getAllCharacters() {
        AF.request(baseURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            do {
            let quotes = try JSONDecoder().decode(Character.self, from: data)
            print("Characters == \(quotes)")
            } catch {
            print("Error decoding characters == \(error)")
            }
        }
    }
    
    func getCharacterById(id: String?) {
        AF.request(baseURL + id!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            
        }
    }
    
    func getCharacterRandomly() {
        AF.request(baseURL + "random", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            
        }
    }
}
