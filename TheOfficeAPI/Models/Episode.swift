import Foundation

// MARK: - Quote

struct Episode: Codable {
    let data: [DataClassEpisode]
}

struct EpisodeRandom: Codable {
    let data: DataClassEpisodeRandom
}

