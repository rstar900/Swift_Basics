class Shape {
    var numberOfSides = 0
    let x = 10
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func testFunc(testArg: String) {
        print("Here goes msg \(testArg) and \(x)")
    }
}

var anyShape = Shape()
anyShape.numberOfSides = 4
print(anyShape.simpleDescription())
print()
anyShape.testFunc(testArg: "Sorted")


