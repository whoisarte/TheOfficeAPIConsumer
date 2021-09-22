import Foundation
import Alamofire

class RepositoryQuotes: ProtocolQuote  {
    //MARK:- Modificar el request AF para extender un escaping completion y trabajar los datos desde el controller
    static func getQuoteAll(completion: @escaping ([DataClassQuote]) -> Void) {
        AF.request(TheOfficeApiEndpoints.urlQuotes, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: Quote = try JSONDecoder().decode(Quote.self, from: data)
                let contenido: [DataClassQuote] = datos.data
                print(responseData.metrics!)
                completion(contenido)
            } catch {
                print("Error decoding data from quotes: \(error.localizedDescription)")
            }
        }
    }
    static func getQuoteRandomly(completion: @escaping (DataClassQuote) -> Void) {
        AF.request(TheOfficeApiEndpoints.urlQuotesRandom, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: QuoteRandom = try JSONDecoder().decode(QuoteRandom.self, from: data)
                let contenido: DataClassQuote = datos.data
                print(responseData.metrics!)
                completion(contenido)
            } catch {
                print("Error decoding data from quote: \(error.localizedDescription)")
            }
        }
    }
 }
