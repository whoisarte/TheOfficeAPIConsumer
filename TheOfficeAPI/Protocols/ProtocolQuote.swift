import Foundation
import SwiftyJSON

protocol ProtocolQuote {
    static func getQuoteAll(finishedCallback:(_ dataQuotes:[DataClassQuote]?)->Void)
    static func getQuoteRandomly()
}
