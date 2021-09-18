import Foundation
import Alamofire
import SwiftyJSON

class RepositoryEpisodes: ProtocolEpisode  {
    static func getEpisodeAll() {
        AF.request(TheOfficeApiEndpoints.urlEpisodes, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: Episode = try JSONDecoder().decode(Episode.self, from: data)
                //print("Datos en bruto -> \(datos.data)")
                let contenido: [DataClassEpisode] = datos.data
                for i in contenido {
                    print("\n\(i.id) : \(i.airDate) : \(i.title) : \(i.datumDescription): \(i.director.name) : \(i.writer.name)")
                }
                //completion(contenido)
            } catch {
                print("Error decoding data from episodes: \(error.localizedDescription)")
            }
        }
    }
    static func getEpisodeRandomly() {
        AF.request(TheOfficeApiEndpoints.urlEpisodesRandom, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: EpisodeRandom = try JSONDecoder().decode(EpisodeRandom.self, from: data)
                //print("Datos en bruto -> \(datos.data)")
                let contenido: DataClassEpisode = datos.data
                print(contenido.datumDescription)
                
                //completion(contenido)
            } catch {
                print("Error decoding data from episode: \(error.localizedDescription)")
            }
        }
    }
}
