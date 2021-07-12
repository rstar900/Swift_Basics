func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

let arr1 = makeArray(repeating: "knock", numberOfTimes: 4)
print(arr1)
let arr2 = makeArray(repeating: 4.55, numberOfTimes: 4)
print(arr2)
print("")

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none //like a nil
possibleInteger = .some(100) //has a value

switch possibleInteger {
    case let .none:
        print("nil value")
    case let .some(value):
        print("Value is : \(value)")    
}

print("")

// "where" is used before function body to make sure that the generic type conforms to a protocol or a condition
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var arr: [T.Element] = []

    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                arr.append(lhsItem)
            }
        }
    }
    return arr
}
print(anyCommonElements([1, 2, 3], [3, 2]))
print(anyCommonElements(["Hol","Camera"],["Camera"]))