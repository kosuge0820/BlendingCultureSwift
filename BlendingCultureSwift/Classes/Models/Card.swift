import UIKit

class Card {
    var color: UIColor!
    var rank: Rank
    var suit: Suit

    init() {
        self.rank = Rank()
        self.suit = Suit()
        
        if self.suit.description == "♡" || self.suit.description == "◇" {
            self.color = UIColor.red
        } else {
            self.color = UIColor.black
        }
    }
}
