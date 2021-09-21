import Foundation

protocol ProtocolEpisode {
    static func getEpisodeAll(completion: @escaping ([DataClassEpisode]) -> Void)
    static func getEpisodeRandomly(completion: @escaping (DataClassEpisodeRandom) -> Void)
}
