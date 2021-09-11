import Foundation
import Alamofire

//Episodes by id -> https://officeapi.dev/api/episodes/id
//General -> https://officeapi.dev/api/episodes
//Ranodm -> https://officeapi.dev/api/episodes/random



class APIRequestEpisodesService {
    
    func getAllEpisodes()  {
        AF.request(baseURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            do {
            let quotes = try JSONDecoder().decode(Quote.self, from: data)
            print("Quotes == \(quotes)")
            } catch {
            print("Error decoding quotes == \(error)")
            }
        }
    }
    
    func getEpisodeById(id: String?) {
        AF.request(baseURL + id!, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            //Obtener datos de la respuesta por Id
            
        }
    }
    
    func getEpisodeRandomly() {
        AF.request(baseURL + "random", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response{ (responseData) in
            guard let data = responseData.data else {return}
            //Obtener datos de la respuesta aleatoriamente
            //Generar aleatorio
            
        }
    }
}

