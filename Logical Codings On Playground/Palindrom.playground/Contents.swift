import UIKit

let stringValue = "repaper"
var reversedString = ""

//Read the array from backwards to get the characters

// looping through each character
for char in stringValue {
    reversedString = "\(char)" + reversedString
}
if reversedString == stringValue {

    print("\(stringValue) is a Palindrome!")
}else{
    print("\(stringValue) is not a Palindrome!")
}

// For sentence or char array
var result = String(stringValue.reversed())
print(result)
if result == stringValue {

    print("\(number) is a Palindrome!")
}else{
    print("\(number) is not a Palindrome!")
}

//For numeric value
let number = 12321

func checkPalindrom(num: Int) -> Bool{
    if num < 0 {
        return false
    }
    var original = num
    var reversedNum = 0
    while original > 0 {
        let reminder = original % 10
        reversedNum = reversedNum * 10 + reminder
        original = original / 10
        
    }
    
    return num == reversedNum
}

if checkPalindrom(num: number){
    print("\(number) is a Palindrome!")
}else{
    print("\(number) is not a Palindrome!")
}
