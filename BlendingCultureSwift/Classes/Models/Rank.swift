import UIKit

struct Rank {
    var description: String
    
    init() {
        self.description = String(arc4random() % 13 + 1)
    }
}
