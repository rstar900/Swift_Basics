var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true

    // defer is used to run a block of code just before the function returns
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
print(fridgeContains("banana")) //should be false as there is no banana in the fridge
print(fridgeIsOpen)
// Prints "false"
