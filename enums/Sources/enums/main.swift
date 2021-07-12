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
let ace = Rank.ace
let king = Rank.king
let aceRawValue = ace.rawValue

print(ace)
print(aceRawValue)
print(Rank.jack.rawValue)
print(Rank.two.simpleDescription())

//A simple function which compares two Rank values by comparing their raw values
func compareRanks(_ rank1: Rank, _ rank2: Rank) -> Int {

    if rank1.rawValue > rank2.rawValue {
        return 1

    } else if rank1.rawValue < rank2.rawValue {
        return -1
    }
    
    return 0
}

print(compareRanks(ace,king))

//get Rank from RawValue
let convertedRank = Rank(rawValue: 7)

if let rank = convertedRank {
    print(rank)
}

print("")

//having no rawValue
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

    func color() -> String {
        switch self {
            case .spades, .clubs:
                return "black"
            case .hearts, .diamonds:
                return "red"    
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(hearts)
print(heartsDescription)
//print(hearts.rawValue) gives error
print(hearts.color())
print("")

//Each enumeration case having its own value type
enum ServerResponse {
    case result(String, String)
    case failure(String)
    case ipAddress(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let ip = ServerResponse.ipAddress("109.199.124.1")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .ipAddress(address):
    print("Ip Address is \(address)")    
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."
