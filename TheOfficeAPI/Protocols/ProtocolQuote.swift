import Foundation
import SwiftyJSON

protocol ProtocolQuote {
    static func getQuoteAll(completion: @escaping ([DataClassQuote]) -> Void)
    static func getQuoteRandomly(completion: @escaping (DataClassQuote) -> Void)
}
