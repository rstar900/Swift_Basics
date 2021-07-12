class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print("\(test.area())\n")
print(test.simpleDescription() + "\n")

class Circle: NamedShape {
    var radius: Double

    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }

    func area() -> Double{
        return 3.14 * radius * radius 
    }

    override func simpleDescription() -> String{
        return "A circle named \(name) of radius \(radius)"
    }
}

var circle = Circle(radius: 4.045, name: "My Circle")
print(circle.area())
print("")
print(circle.simpleDescription() + "\n")

//Getters and Setters
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"
print("")

//Property observers - willSet and didSet will run before and after a property is set outside the init
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
        didSet{
            print("Old value of square's sidelength was \(oldValue.sideLength)")
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
        didSet{
            print("Old value of triangle's sidelength was \(oldValue.sideLength)")
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
// Prints "10.0"
print(triangleAndSquare.triangle.sideLength)
// Prints "10.0"
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
// Prints "50.0"
triangleAndSquare.triangle = EquilateralTriangle(sideLength: 70, name: "Larger Triangle")
print(triangleAndSquare.square.sideLength)
// Prints "70.0"

print("\n")

//Accessing optional values 
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

print(sideLength ?? "Lol")