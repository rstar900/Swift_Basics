var total = 0

// ..< for omitting the last value (0 to 3 in this case)
for i in 0..<4 {
    print(i)
}

print("")

// ... for including the last value as well (0 to 4 in this case)
for i in 0...4 {
    print(i)
}
