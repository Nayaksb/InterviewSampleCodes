import UIKit

// Array of string type
let stringArray = ["Ox", "Cow", "Bee", "Cow", "Ox", "Cat"]

let uniqueElements = Array(Set(stringArray))
//Call print - See the output its not in order
print("Unique String Array - \(uniqueElements)")

////Common Elements between both arrays without removing duplicates
var commonArrayWay1 = stringArray.filter{uniqueElements.contains($0)}


print("Common Elements between both arrays even showing as many times its occuring :", commonArrayWay1)


var commonArrayWay2 = Array(Set(stringArray).intersection(Set(uniqueElements)))


print("Common Elements between both arrays:", commonArrayWay2)
