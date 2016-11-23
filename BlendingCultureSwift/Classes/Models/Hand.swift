import UIKit

struct Hand: DataType {
    private var deck: Deck = Deck()
    private var cards = [Card]()
    
    init() {}
    
    private init(deck: Deck, cards: [Card]) {
        self.deck = deck
        self.cards = cards
    }
    
    var numberOfItems: Int {
        return cards.count
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewItem(at index: Int) -> Hand {
        let hand = insertItem(card: deck.nextCard(), atIndex: index)
        return hand
    }
    
    func deleteItem(at index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.remove(at: index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    
    func moveItem(from index: Int, toIndex: Int) -> Hand {
        return deleteItem(at: index)
            .insertItem(card: cards[index], atIndex: toIndex)
    }
    
    fileprivate func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, at: index)
        return Hand(deck: deck, cards: mutableCards)
    }
}
