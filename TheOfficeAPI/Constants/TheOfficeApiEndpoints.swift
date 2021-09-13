import Foundation

class TheOfficeApiEndpoints {
    
    //Quotes by id -> https://officeapi.dev/api/quotes/id
    //General -> https://officeapi.dev/api/quotes
    //Random -> https://officeapi.dev/api/quotes/random
    
    //Characters by id -> https://officeapi.dev/api/characters/id
    //General -> https://officeapi.dev/api/characters
    //Random -> https://officeapi.dev/api/characters/random
    
    
    //Episodes by id -> https://officeapi.dev/api/episodes/id
    //General -> https://officeapi.dev/api/episodes
    //Random -> https://officeapi.dev/api/episodes/random

    static let baseURL: String = "https://officeapi.dev/api/"
    static let urlQuotes: String = baseURL + "quotes/"
    static let urlEpisodes: String = baseURL + "episodes/"
    static let urlCharacters: String = baseURL + "characters/"
}
