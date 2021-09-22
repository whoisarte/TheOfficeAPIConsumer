import UIKit

class EpisodesCell: UITableViewCell, ProtocolSetTypistFont {
    
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
        setTypistFont()
    }
    func setTypistFont() {
        LBO_EpisodeTitle.font = UIFont(name:"Typist",size:20)
        LBO_EpisodeDescription.font = UIFont(name:"Typist",size:15)
        LBO_EpisodeAirDate.font = UIFont(name:"Typist",size:20)
        LBO_EpisodeWriter.font = UIFont(name:"Typist",size:20)
        LBO_EpisodeDirector.font = UIFont(name:"Typist",size:20)
    }
}
