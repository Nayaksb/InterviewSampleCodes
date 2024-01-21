import UIKit

//Declare the array having duplicate values
var mainArray = [1, 4, 7, 4, 5, 11, 7, 11]

//The function to find and create new array having unique values
let uniqueArray = Array(Set(mainArray)).sorted()

//Call print - See the output its not in order
print("Unique Values - \(uniqueArray)")

// Array of string type
let stringArray = ["Ox", "Cow", "Bee", "Cow", "Ox", "Cat"]

let uniqueElements = Array(Set(stringArray)).sorted()
//Call print - See the output its not in order
print("Unique String Array - \(uniqueElements)")
