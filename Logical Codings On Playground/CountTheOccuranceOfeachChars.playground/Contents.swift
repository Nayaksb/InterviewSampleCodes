import UIKit

//Find occurence of each character in a string and return the information
let name = "harshitha"
let list = Array(name)
//Creates a collection containing the specified number of the given element.
let ones = repeatElement(1, count: list.count)
//Creates a sequence of pairs built out of two underlying sequences.
//Creates a new dictionary from the key-value pairs in the given sequence, using a combining closure to determine the value for any duplicate keys.
let counted = Dictionary(zip(list, ones), uniquingKeysWith: +)
//["i": 1, "r": 1, "s": 1, "t": 1, "h": 3, "a": 2]
print(counted)
