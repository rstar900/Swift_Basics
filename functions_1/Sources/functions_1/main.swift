//By default functions in Swift use named parameters
func greet(person: String, lunchOfTheDay: String) -> String {
    return "Hello \(person), today's special lunch is \(lunchOfTheDay)."
}
print(greet(person: "Bob", lunchOfTheDay: "Spaghetti"))

print("-----------------------------------------------")

// use underscore(_) before the argument name to make it unnamed parameter
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))