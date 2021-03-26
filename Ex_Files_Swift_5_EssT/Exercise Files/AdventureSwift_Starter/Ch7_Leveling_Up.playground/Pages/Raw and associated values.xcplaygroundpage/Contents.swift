/*:
 # Raw and Associated Values
 ---
 
 ## Topic Essentials
 Enumerations can be expanded to include raw values, which can store unique or sequential values, or associated values, which can capture case specific parameters for use in their respective code blocks.
 
 ### Objectives
 + Declare an enum with a raw value
 + Declare an enum with associated values
 + Add a method inside the enum to execute a switch statement for each case
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Raw values
enum NonPlayableCharacters: String {
    case villager = "Common, not much useful info there"
    case blacksmith = "One per village, will have quest information"
    case merchant = "No limit per village, will make you cool stuff"
}

var blacksmith = NonPlayableCharacters.blacksmith
print(blacksmith.rawValue)

// Associated values
enum PlayerState {
    case alive
    case dead(level: Int)
    case unknown(debugError: String)
    
    func evaluateCase() {
        switch self {
        case .alive:
            print("Still kicking")
        case .dead(level: let level):
            print("Sorry, back to \(level) for you..")
        case .unknown(debugError: let debugError):
            print(debugError)
        }
    }
}

PlayerState.dead(level: 1).evaluateCase()
PlayerState.alive.evaluateCase()
PlayerState.unknown(debugError: "Something went wrong")


