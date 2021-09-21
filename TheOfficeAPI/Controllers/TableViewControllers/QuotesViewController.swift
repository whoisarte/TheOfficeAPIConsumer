//
//  QuotesViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 20/09/21.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var IBO_QuotesTableView: UITableView!
    var quotes: [DataClassQuote] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToQuotes()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //setDataToQuotes()
        return quotes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //setDataToQuotes()
        let cell = IBO_QuotesTableView.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath) as! QuotesCell
        cell.configure(quote: quotes[indexPath.row])
        return cell
    }
    func setDataToQuotes(){
        RepositoryQuotes.getQuoteAll { data in
            self.quotes = data
            self.IBO_QuotesTableView.reloadData()
        }
    }
    
    
}
