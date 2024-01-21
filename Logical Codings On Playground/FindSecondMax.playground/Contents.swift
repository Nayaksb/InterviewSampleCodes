import UIKit
import Foundation

let array = [2, 4, 5, 7, 9, 8, 1]

func findSecondMax(arr: [Int]) -> Int {
    var first = 0, second = 0
    
    for item in array {
        if item > first {
            first = second
            second = item
        }
    }
    
    return second
}

findSecondMax(arr: array)
