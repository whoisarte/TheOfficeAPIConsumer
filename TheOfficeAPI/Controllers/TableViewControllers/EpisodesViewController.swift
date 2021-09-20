//
//  EpisodesViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 20/09/21.
//

import UIKit

class EpisodesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var IBO_EpisodesTableView: UITableView!
    
    let episodes: [DataClassEpisode]! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = IBO_EpisodesTableView.dequeueReusableCell(withIdentifier: "episodeCell", for: indexPath) as! EpisodesCell
        cell.configure(episode: episodes[indexPath.row])
        return cell
    }
    
    

}
