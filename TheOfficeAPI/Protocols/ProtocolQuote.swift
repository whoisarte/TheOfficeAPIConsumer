import Foundation

protocol ProtocolQuote {
    static func getQuoteAll(completion: @escaping ([DataClassQuote]) -> Void)
    static func getQuoteRandomly(completion: @escaping (DataClassQuote) -> Void)
}
