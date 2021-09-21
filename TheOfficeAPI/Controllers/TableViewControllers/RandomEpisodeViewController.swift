//
//  RandomEpisodeViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 21/09/21.
//

import UIKit

class RandomEpisodeViewController: UIViewController {

    @IBOutlet weak var LBO_EpisodeTitle: UILabel!
    @IBOutlet weak var LBO_EpisodeDescription: UILabel!
    @IBOutlet weak var LBO_EpisodeAirDate: UILabel!
    @IBOutlet weak var LBO_EpisodeWriter: UILabel!
    @IBOutlet weak var LBO_EpisodeDirector: UILabel!
    
    //Objeto de episodio random
    var episodio: DataClassEpisodeRandom!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToEpisode()
    }
    
    func setDataToEpisode(){
         RepositoryEpisodes.getEpisodeRandomly { data in
            self.episodio = data
        }
        LBO_EpisodeTitle.text = episodio.title
        LBO_EpisodeDescription.text = episodio.dataDescription
        LBO_EpisodeAirDate.text = episodio.airDate
        LBO_EpisodeWriter.text = episodio.writer
        LBO_EpisodeDirector.text = episodio.director
    }
    
    
}
