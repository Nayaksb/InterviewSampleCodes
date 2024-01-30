import UIKit

func twoSumTarget(_ nums: [Int], _ target: Int) -> [Int]{
    var location = [Int : Int]()
    
    for (index, number) in nums.enumerated(){
        if let otherIndex = location[target - number], otherIndex != index {
            //location[26 - 11] index returns the location and checks if current index is not same as previously stores index return
            /*
             nums enumerated values iterated by enumerated method is one of my favorites because it iterates over each of the items while also telling us the items's position in the array.
             and we get follows
             The target is 26, to add values are
             Values are 11 + 15 = 26
             Positions are [2, 3]

             */
            print("\(String(describing: location[target - number])) ---- \(index)")
            return [index, otherIndex]
        }
        location[number] = index
    }
   return [0,0]
}

let nums = [2, 7, 11, 15, 6, 3]
let target = 27
let location = twoSumTarget(nums, target)
if location == [0, 0]{
    print("Sum of two numbers to achieve \(target) is not found!")
}else{
    print("Positions are:  \(location) and values are : \(nums[location[0]]) & \(nums[location[1]])")

}

