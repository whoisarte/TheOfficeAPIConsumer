class CallBacks {
    typealias allQuotesCallBack = (_ quotes:[DataClassQuote], _ status: Bool, _ message:String) -> Void
    typealias randomQuoteCallBack = (_ quote: DataClassQuote, _ status: Bool, _ message:String) -> Void
    typealias allEpisodesCallBack = (_ episodes: [DataClassEpisode], _ status: Bool, _ message:String) -> Void
    typealias randomEpisodeCallBack = (_ episode: DataClassEpisode, _ status: Bool, _ message:String) -> Void

    var callBackQuotes:allQuotesCallBack?
    var callBackQuote:randomQuoteCallBack?
    var callBackEpisodes:allEpisodesCallBack?
    var callBackEpisode:randomEpisodeCallBack?
}
