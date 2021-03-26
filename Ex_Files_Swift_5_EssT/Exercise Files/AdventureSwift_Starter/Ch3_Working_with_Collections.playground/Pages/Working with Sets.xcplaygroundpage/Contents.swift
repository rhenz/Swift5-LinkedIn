/*:
 # Working with Sets
 ---
 
 ## Topic Essentials
 Sets are a great tool you need to store unique, unorderd values in a collection, as opposed to arrays and dictionaries which can hold duplicates with no issue.
 
 ### Objectives
 + Create a set named **activeQuests** and understand the syntax
 + `insert` and `remove` elements from **activeQuests**
 + Sort **activeQuests** and check if it `contains` a certain value
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating sets
var activeQuest: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]

// Inserting and removing elements
activeQuest.insert("Only the Strong")
activeQuest.remove("Big Boss")

print(activeQuest)

// More common methods
activeQuest.contains("The Undertaker")
activeQuest.sorted()
