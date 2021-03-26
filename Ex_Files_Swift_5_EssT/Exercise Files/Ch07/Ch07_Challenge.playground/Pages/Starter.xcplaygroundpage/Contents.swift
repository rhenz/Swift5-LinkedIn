/*:
 # Chapter Challenge: Combat Actions
 ---
 
 ### Tasks
 1. Create an enumeration called **ActionError** that adopts the **Error** protocol with three cases - **InsufficientMP**, **OutOfRange**, and **UnknownError**
 2. Declare a function called **attackEnemy** that takes in an integer named **mp** and a double named **distance** as parameters and returns an optional boolean.
 3. Mark **attackEnemy** as a throwable function
 4. Add two guard statements - if **mp** is less than 10 throw **InsufficientMP**, if **distance** is greater than 5.89 throw **OutOfRange**
 5. If both guard statements pass, return true
 6. Use a **do-catch* statement to call **attackEnemy** and handle each error case individually
 7. Unwrap the optional return value from **attackEnemy** using an **if-let** statement
 
 [Previous Topic](@previous)
 
 */
// 1
enum ActionError: Error {
    case insufficientMP
    case outOfrange
    case unknownError
}

// 2 & // 3
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
    // 4
    guard mp > 10 else {
        throw ActionError.insufficientMP
    }
    
    guard distance < 5.89 else {
        throw ActionError.outOfrange
    }
    
    // 5
    return true
}

// 6
do {
    try attackEnemy(mp: 10, distance: 5.88)
    print("Successfully attacked enemy")
} catch ActionError.insufficientMP {
    print("Insufficient MP!")
} catch ActionError.outOfrange {
    print("Too far!")
} catch {
    print("Unknown error")
}

// 7
if let attackStatus = try? attackEnemy(mp: 10, distance: 5.88) {
    print("STATUS: \(attackStatus)")
}
