protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
// Prints "The number 7"

extension Double {
    var absoluteValue: Double {
        if self < 0 {
            return -1 * self
        }

        return self
    }
}

print(Double(-90.7567).absoluteValue)