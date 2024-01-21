import UIKit

var array = [2, 5, 8, 9, 6, 7, 11, 13, 17, 15]

func quickSort(arr: [Int]) -> [Int] {
    var lessArray = [Int]()
    var greaterArray = [Int]()
    var equalArray = [Int]()
    if arr.count > 1 {
        let pivot = arr[arr.count/2]
    for x in arr {
       
        if x < pivot {
            lessArray.append(x)
        } else if x > pivot {
            greaterArray.append(x)
        } else if x == pivot {
            equalArray.append(x)
        }
    }
        return quickSort(arr: lessArray) + equalArray + quickSort(arr: greaterArray)
    }
    
   return arr
}

quickSort(arr: array)
