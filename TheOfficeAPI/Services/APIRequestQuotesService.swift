import Foundation
import Alamofire

//Quotes by id -> https://officeapi.dev/api/quotes/id
//General -> https://officeapi.dev/api/quotes
//Ranodm -> https://officeapi.dev/api/quotes/random

class APIRequestQuotesService {
    
    fileprivate var baseURL: String = "https://officeapi.dev/api/quotes/"
    
    func getAllQuotes() {
        AF.request(baseURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            do {
                let quotes = try JSONDecoder().decode([Quote].self, from: data)
            print("Quotes == \(quotes)")
            } catch {
            print("Error decoding quotes == \(error)")
            }
        }
    }
    func getQuoteById(id: String?) {
        AF.request(baseURL + id!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            
        }
    }
    func getQuoteRandomly() {
        AF.request(baseURL + "random", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            
        }
    }
}
    
