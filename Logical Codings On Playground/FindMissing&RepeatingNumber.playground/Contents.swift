import UIKit

func printTwoElements(arr: [Int], n: Int) {
    var temp = Array(repeating: 0, count: n)
    
    var repeatingNumber = -1
    var missingNumber = -1
    for i in 0..<n {
        temp[arr[i] - 1] += 1
        if temp[arr[i] - 1] > 1 {
            repeatingNumber = arr[i]
            print("The repeating number is \(repeatingNumber).")
        }
    }
    for i in 0..<n {
        if temp[i] == 0 {
            missingNumber = i + 1
            print("The missing number is \(missingNumber).")
        }
    }
}

let arr = [7, 3, 4, 5, 5, 6, 3]
let n = arr.count
printTwoElements(arr: arr, n: n)


