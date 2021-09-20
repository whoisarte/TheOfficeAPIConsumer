import UIKit

class QuotesCell: UITableViewCell {
    @IBOutlet weak var IBO_Quote: UILabel!
    @IBOutlet weak var IBO_Character: UILabel!
    
    func configure(quote: DataClassQuote) {
        IBO_Quote.text = quote.content
        IBO_Character.text = "\(quote.character.firstname) \(quote.character.lastname)"
    }
}
