import UIKit

final class CardCell: UITableViewCell {
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillWith(card: Card) {
        rankLabel.textColor = card.color
        suitLabel.textColor = card.color
        rankLabel.text = card.rank.description
        suitLabel.text = card.suit.description
    }
}
