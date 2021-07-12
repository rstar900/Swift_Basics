var numbers = [20, 19, 7, 12]

//traditional way
var mappednums = numbers.map({ (number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    }
    return number
})

print(mappednums)
print()

//simpler way
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
print()
// Prints "[60, 57, 21, 36]"

//$n can be used to refer to the nth parameter(Indexed from 0) of the parent function
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"