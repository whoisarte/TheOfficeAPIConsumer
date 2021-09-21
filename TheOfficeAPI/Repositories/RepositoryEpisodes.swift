import Foundation
import Alamofire

class RepositoryEpisodes: ProtocolEpisode  {
    static func getEpisodeAll(completion: @escaping ([DataClassEpisode]) -> Void) {
        AF.request(TheOfficeApiEndpoints.urlEpisodes, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: Episode = try JSONDecoder().decode(Episode.self, from: data)
                let contenido: [DataClassEpisode] = datos.data
                /*
                for i in contenido {
                    print("\n\(i.id) : \(i.airDate) : \(i.title) : \(i.datumDescription): \(i.director.name) : \(i.writer.name)")
                }
                */
                completion(contenido)
            } catch {
                print("Error decoding data from episodes: \(error.localizedDescription)")
            }
        }
    }
    static func getEpisodeRandomly(completion: @escaping (DataClassEpisodeRandom) -> Void) {
        AF.request(TheOfficeApiEndpoints.urlEpisodesRandom, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: EpisodeRandom = try JSONDecoder().decode(EpisodeRandom.self, from: data)
                let contenido: DataClassEpisodeRandom = datos.data
                //print("\n\(contenido.id) : \(contenido.airDate) : \(contenido.title) : \(contenido.dataDescription): \(contenido.director) : \(contenido.writer)")
                completion(contenido)
            } catch {
                print("Error decoding data from episode: \(error.localizedDescription)")
            }
        }
    }
}
