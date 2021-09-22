import UIKit

class QuotesCell: UITableViewCell, ProtocolSetTypistFont {
    @IBOutlet weak var IBO_Quote: UILabel!
    @IBOutlet weak var IBO_Character: UILabel!
    
    func configure(quote: DataClassQuote) {
        IBO_Quote.text = quote.content
        IBO_Character.text = "\(quote.character.firstname) \(quote.character.lastname)"
        setTypistFont()
    }
    
    func setTypistFont() {
        IBO_Quote.font = UIFont(name:"Typist",size:20)
        IBO_Character.font = UIFont(name:"Typist",size:15)
    }
    
    
}
