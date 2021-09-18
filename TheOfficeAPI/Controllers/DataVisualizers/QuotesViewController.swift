//
//  QuotesViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 06/09/21.
//

import UIKit

class QuotesViewController: UIViewController {

    var quotesData: [DataClassQuote] = []
    var quoteData: DataClassQuote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("\n\(i.id) : \(i.content) : \(i.character.firstname) \(i.character.lastname)")
        
        /*
         Quotes tienen:
            id
            contenido
            nombre de quien lo dijo
            apellido de quien lo dijo
         */
    }
}
