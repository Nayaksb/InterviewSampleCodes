import UIKit

//Given number array
let numArray = [1, 3, 7, 6, 4,2]

func findMissing(arr: [Int]) {
    let N = arr.count
    var temp = Array(repeating: 0, count: N + 1)
    for i in 0..<N {
        temp[arr[i] - 1] = 1
    }
    var ans = 0
    for i in 0...N {
        if temp[i] == 0 {
            ans = i + 1
            break
        }
    }
    print(ans)
}
findMissing(arr: numArray)

