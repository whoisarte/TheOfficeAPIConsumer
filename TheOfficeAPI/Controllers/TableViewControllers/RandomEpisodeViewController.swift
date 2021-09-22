import UIKit

class RandomEpisodeViewController: UIViewController, ProtocolSetTypistFont{
    @IBOutlet weak var LBO_EpisodeTitle: UILabel!
    @IBOutlet weak var LBO_EpisodeDescription: UILabel!
    @IBOutlet weak var LBO_EpisodeAirDate: UILabel!
    @IBOutlet weak var LBO_EpisodeWriter: UILabel!
    @IBOutlet weak var LBO_EpisodeDirector: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToEpisode()
    }
    
    func setDataToEpisode(){
         RepositoryEpisodes.getEpisodeRandomly { data in
            self.LBO_EpisodeTitle.text = data.title
            self.LBO_EpisodeDescription.text = data.dataDescription
            self.LBO_EpisodeAirDate.text = data.airDate
            self.LBO_EpisodeWriter.text = data.writer
            self.LBO_EpisodeDirector.text = data.director
         }
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
