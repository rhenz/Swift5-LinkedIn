/*:
 # Swift Enumerations
 ---
 
 ## Topic Essentials
 Swift enumerations allow you to put related values together into a group that you can use and access. Like switch statements, each value in an enum is considered a different case, which is one of the many reasons they go so well together.
 
 ### Objectives
 + Declare a basic enum called **GameState**
 + Store an enum case as a variable and print out its value
 + Use a switch statement to define actions for each enum case
 + Understand default cases and the **@unknown** keyword
 
 [Next Topic](@next)
 
 */
// Declaring an enum
enum GameState {
    case completed
    case initializing
    case loadingData
}

// Storing and switching on an enum value
var currentState = GameState.completed
print("Current state is \(currentState)")

switch currentState {
case .completed:
    print("Completed")
case .initializing:
    print("Initializing")
case .loadingData:
    print("Loading data")
}
