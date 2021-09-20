import Foundation

// MARK: - Quote
struct Quote: Codable {
    let data: [DataClassQuote]
}

struct QuoteRandom: Codable {
    let data: DataClassQuote
}

