//To make a custom exception, the type has to adopt to Error protocol
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }

    return "Job sent"
}

// should extend string as an Error to catch it, otherwise String can't be thrown as Error
extension String: Error{}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
// Prints "Job sent"

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
    throw "Should run 3rd catch now"
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}
// Prints "Job sent"

//can also use try? to convert the result to an optional, so that when the exception occurs, then it is nil
//else it is unwrapped so the value can be used
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
print(printerSuccess ?? "OMG! theres an error")
print(printerFailure ?? "OMG! theres an error")


