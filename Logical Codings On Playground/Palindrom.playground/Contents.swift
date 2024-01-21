import UIKit

var number = 12321

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

checkPalindrom(num: number)
