//
//  QuotesViewController.swift
//  TheOfficeAPI
//
//  Created by Artemio on 20/09/21.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var IBO_QuotesTableView: UITableView!
    //Verificar que la información se envíe del método
    let quotes: [DataClassQuote]! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = IBO_QuotesTableView.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath) as! QuotesCell
        cell.configure(quote: quotes[indexPath.row])
        return cell
    }
    
    
}
