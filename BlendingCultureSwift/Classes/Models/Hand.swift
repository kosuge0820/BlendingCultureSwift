import UIKit

struct Hand {
    private var deck = Deck()
    private var cards = [Card]()
    
    init() {
    
    }
    
    private init(deck: Deck, cards: [Card]) {
        self.deck = deck
        self.cards = cards
    }
    
    var numberOfCards: Int {
        return cards.count
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    func cardAtPosition(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewsCardAtIndex(index: Int) -> Hand {
        return insertCard(card: deck.nextCard(), atIndex: index)
    }
    
    func deleteCardAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.remove(at: index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    fileprivate func insertCard(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, at: index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    func moveCard(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteCardAtIndex(index: fromIndex)
               .insertCard(card: cards[fromIndex], atIndex: toIndex)
    }
}
