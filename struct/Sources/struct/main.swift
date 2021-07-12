enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print("")

//struct is like class but only one difference, it is always copied whereas a class is passed around by reference
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades) //it has a default initializer like this
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)
print("")

//A function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.
func deckOfCards() -> [Card] {

    var cards: [Card] = []
    let suits: [Suit] = [.spades, .hearts, .diamonds, .clubs]
    let ranks: [Rank] = [.ace, .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king]

    for suit in suits {
        for rank in ranks {
            let card = Card(rank: rank, suit: suit)
            cards.append(card)
        }
    }

    return cards
}

//Making the deck of cards and checking whether it has the right size (52 to be exact)
var deck = deckOfCards()
print("Size of deck: \(deck.count)")
print("")

//Printing the deck
for card in deck{
    print(card.simpleDescription())
}