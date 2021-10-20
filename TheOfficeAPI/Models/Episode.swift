import Foundation

// MARK: - Quote

struct Episode: Codable {
    let data: [DataClassEpisode]
}

// MARK: - EpisodeRandom
struct EpisodeRandom: Codable {
    let data: DataClassEpisodeRandom
}
