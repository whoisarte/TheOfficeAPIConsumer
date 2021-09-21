//
//  RandomQuoteViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 21/09/21.
//

import UIKit

class RandomQuoteViewController: UIViewController {

    @IBOutlet weak var IBO_Quote: UILabel!
    @IBOutlet weak var IBO_Character: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToQuote()
    }
    
    func setDataToQuote(){
        RepositoryQuotes.getQuoteRandomly { data in
            self.IBO_Quote.text = data.content
            self.IBO_Character.text = "\(data.character.firstname) \(data.character.lastname)"
        }
    }

}
