import Foundation
import Alamofire

class RepositoryQuotes: ProtocolQuote  {
    
   static func getQuoteAll(){ 
        AF.request(TheOfficeApiEndpoints.urlQuotes, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: Quote = try JSONDecoder().decode(Quote.self, from: data)
                //print("Datos en bruto -> \(datos.data)")
                let contenido: [DataClassQuote] = datos.data
                for i in contenido {
                    print("\n\(i.id) : \(i.content) : \(i.character.firstname) \(i.character.lastname)")
                }
            } catch {
                print("Error decoding data from quotes: \(error.localizedDescription)")
            }
        }
    }
    static func getQuoteRandomly(){ //MARK:- Bien
        AF.request(TheOfficeApiEndpoints.urlQuotesRandom, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).responseJSON { responseData in
            guard let data = responseData.data else { return }
            do {
                let datos: QuoteRandom = try JSONDecoder().decode(QuoteRandom.self, from: data)
                //print("Datos en bruto -> \(datos.data)")
                let contenido: DataClassQuote = datos.data
                print("\n\(contenido.id) : \(contenido.content) : \(contenido.character.firstname) \(contenido.character.lastname)")
                //completion(contenido)
            } catch {
                print("Error decoding data from quote: \(error.localizedDescription)")
            }
        }
    }
}
