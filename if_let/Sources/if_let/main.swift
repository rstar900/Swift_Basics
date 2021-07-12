var optionalName: String? = "Rachit"

if let n = optionalName {
    print("Hello \(n)!")

} else {
    print("Holla, noname!")
}

var anotherName: String?
print("\(anotherName ?? "No name you've got")")