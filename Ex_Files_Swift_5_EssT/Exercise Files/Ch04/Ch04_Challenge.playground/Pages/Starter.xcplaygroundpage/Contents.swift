/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
 6a. exp is equal to 32
 6b. exp is between 200 and 500
 6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var leftHandedWeapon: String? = "Sword"
var rightHandedWeapon: String? = nil

// 2
if let leftWeapon = leftHandedWeapon, let rightWeapon = rightHandedWeapon {
    print("Both weapon exists!")
} else {
    print("Something is nil!")
}

// 3
var playerExp = ["Chabby": 600, "Oli": 300, "Nimbus": 32]

// 4
for (player, exp) in playerExp {
    print("Player \(player) has \(exp) experience points!")
}

// 5
for (player, exp) in playerExp {
    guard exp >= 1 else {
        continue
    }
    
    print("Player \(player) has at least 1 experience points")
    
    // 6
    switch exp {
    case 32:
        print("Exp is 32!")
    case 200...500:
        print("EXP between 200 - 500!")
    case (let exp) where exp > 500:
        print("EXP \(exp)!!!!!!")
    default:
        print("NOTHING HAPPENS!")
    }
}


