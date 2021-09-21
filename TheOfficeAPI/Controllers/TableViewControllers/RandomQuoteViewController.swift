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
    
    //Objeto para asignar el quote random
    var quote: DataClassQuote!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToQuote()
    }
    
    func setDataToQuote(){
        RepositoryQuotes.getQuoteRandomly { data in
            self.quote = data
        }
        IBO_Quote.text = quote.content
        IBO_Character.text = "\(quote.character.firstname) \(quote.character.lastname)"
    }

}
