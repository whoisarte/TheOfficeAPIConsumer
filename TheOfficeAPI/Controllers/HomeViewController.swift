import UIKit

class HomeViewController: UIViewController, ProtocolRoundComponents{
    
    @IBOutlet weak var IBO_ButtonQuotes: UIButton!
    @IBOutlet weak var IBO_ButtonEpisodes: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Consumidor de TO"
        self.navigationItem.setHidesBackButton(true, animated: true)
        roundComponents()
    }
    
    func roundComponents() {
        IBO_ButtonQuotes.layer.cornerRadius = 5; IBO_ButtonQuotes.clipsToBounds = true
        IBO_ButtonEpisodes.layer.cornerRadius = 5; IBO_ButtonEpisodes.clipsToBounds = true
    }
}
