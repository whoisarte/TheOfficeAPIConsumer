import UIKit

class EpisodesCell: UITableViewCell {
 
    @IBOutlet weak var LBO_EpisodeTitle: UILabel!
    @IBOutlet weak var LBO_EpisodeDescription: UILabel!
    @IBOutlet weak var LBO_EpisodeAirDate: UILabel!
    @IBOutlet weak var LBO_EpisodeWriter: UILabel!
    @IBOutlet weak var LBO_EpisodeDirector: UILabel!
    
    func configure(episode: DataClassEpisode){
        LBO_EpisodeTitle.text = episode.title
        LBO_EpisodeDescription.text = episode.datumDescription
        LBO_EpisodeAirDate.text = episode.airDate
        LBO_EpisodeWriter.text = episode.writer.name
        LBO_EpisodeDirector.text = episode.director.name
    }
}
