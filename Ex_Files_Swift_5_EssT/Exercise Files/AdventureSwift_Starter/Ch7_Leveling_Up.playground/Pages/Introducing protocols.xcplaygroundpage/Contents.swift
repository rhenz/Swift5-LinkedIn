/*:
 # Introducing Protocols
 ---
 
 ## Topic Essentials
 Swift protocols are essentially groups of properties and behaviors that can be adopted by a class or struct. If a class or struct implements a protocol, that class or struct enters into an agreement that says they will follow the blueprint the protocol has set out.
 
 ### Objectives
 + Declare a protocol
 + Add properties, a function and an initializer
 + Create a struct that adopts the protocol
 + Adopt multiple protocols
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declare a protocol
protocol Collectable {
    var name: String { get }
    var price: Int { get set }
    
    init(withname: String, startingPrice: Int)
    func collect() -> Bool
}

extension Collectable {
    var priceIncrease: Int {
        return self.price * 10
    }
    
    init(name: String) {
        self.init(withname: name, startingPrice: 100)
    }
    
    func collect() -> Bool {
        print("Default item couldn't be collected")
        return false
    }
}

protocol Usable {
    func use()
}

// Protocol adoption
struct Item: Collectable, Usable {
    var name: String
    var price: Int
    
    init(withname: String, startingPrice: Int) {
        self.name = withname
        self.price = startingPrice
    }
    
//    func collect() -> Bool {
//        print("Item collected")
//        return true
//    }
    
    func use() {
        print("Item used!")
    }
}

let potion = Item(withname: "High Potion", startingPrice: 35)
potion.collect()
potion.use()

let antidote = Item(name: "Antidote")
antidote.price
//antidote.collect()


extension String {
    func fancyDebug() {
        print("This string has \(self.count) characters")
    }
}

antidote.name.fancyDebug()
