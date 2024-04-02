import UIKit
import Foundation

let array = [2, 4, 5]

func findNthMax(arr: [Int]) -> Int {
    var first = 0, second = 0
    
    for item in array {
        if item > first {
            first = second
            second = item
        }
    }
    
    return second
}

findNthMax(arr: array)

let n = 2
let nthValue = array.sorted{$0 > $1}
if n >= array.count {
   print("Index out of range")
}else{
    if n == 1 {
        print(nthValue[0])
    }else{
        print(nthValue[n - 1])
    }
}



