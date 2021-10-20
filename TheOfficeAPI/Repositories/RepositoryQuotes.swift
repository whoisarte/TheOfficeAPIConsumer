import Foundation
import Alamofire

/*
 El repositorio debe almacenar los datos que recibe de la API en la base de datos (en este caso, Core Data).
 Es necesario cambiar el completion @escaping para que regrese una instancia de la base de datos y trabajar con ella cuando se haga el request.
 Además, es necesario hacer los datos persistentes para que al cerrar la app se queden almacenados los datos.
 Solo como prueba por ahora. Es una aplicación relativamente sencilla
 Al mostrar los quotes de forma aleatoria, no será necesario crear un request cada vez que se desee sino mostrar
 los que se vayan agregando. Ademas de validar si el request ya hecho (a través del id) trae consigo datos
 que ya estén la base
 */
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
