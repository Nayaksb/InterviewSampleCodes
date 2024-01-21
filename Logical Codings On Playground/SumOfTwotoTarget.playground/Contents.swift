import UIKit

func twoSumTarget(_ nums: [Int], _ target: Int) -> [Int]{
    var dict = [Int : Int]()
    
    for (index, number) in nums.enumerated(){
        if let otherIndex = dict[target - number], otherIndex != index {
            print("\(String(describing: dict[target - number])) ---- \(index)")

            return [index, otherIndex]
        }
        dict[number] = index
    }
   return [0,0]
}

let nums = [2, 7, 11, 15, 6, 3]
let target = 21
let dict = twoSumTarget(nums, target)
print("Done \(dict)")
