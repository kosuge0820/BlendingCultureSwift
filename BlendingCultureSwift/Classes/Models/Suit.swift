import UIKit

struct Suit {
    var description: String
    
    init() {
        self.description = ["♡", "♧", "◇", "♤"][Int(arc4random() % 4)]
    }
}
