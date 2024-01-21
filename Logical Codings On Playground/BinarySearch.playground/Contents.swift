import UIKit

var numArray = [2, 4, 7, 6, 9, 4, 8, 10]

func binarySearch(nums: [Int], searchElement: Int) -> Int {
    var firstIndex = 0
    var lastIndex = nums.count - 1
    let foundIndex = -1
    while firstIndex <= lastIndex {
        let mid = (firstIndex + lastIndex)/2
        if nums.count == 0 {
            return foundIndex
        }
        if nums[mid] == searchElement {
            return mid
        }else if searchElement < nums[mid] {
            firstIndex = mid + 1
        }else if searchElement > nums[mid] {
            lastIndex = mid - 1
        }

    }
    
    return foundIndex
}
if binarySearch(nums: numArray, searchElement: 6) == -1 {
    print("Not Found")
}else{
    print("The element found at \(binarySearch(nums: numArray, searchElement: 6))")
}

