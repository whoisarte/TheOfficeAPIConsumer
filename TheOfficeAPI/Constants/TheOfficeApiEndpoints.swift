import Foundation

class TheOfficeApiEndpoints {
    //General -> https://officeapi.dev/api/quotes
    //Random -> https://officeapi.dev/api/quotes/random
    
    //General -> https://officeapi.dev/api/episodes
    //Random -> https://officeapi.dev/api/episodes/random

    static let baseURL: String = "https://officeapi.dev/api/"
    static let urlQuotes: String = baseURL + "quotes/"
    static let urlEpisodes: String = baseURL + "episodes/"
    static let urlEpisodesRandom: String = urlEpisodes + "random/"
    static let urlQuotesRandom: String = urlQuotes + "random/"
}
