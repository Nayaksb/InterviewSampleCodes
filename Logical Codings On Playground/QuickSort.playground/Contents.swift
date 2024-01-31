import UIKit

//Quick Sort
//Given Array
let array = [9, -3, 5, 2, 6, 8, -6, 1, 3]

func quickSort(arr: [Int]) -> [Int] {
    var lessArray = [Int]()
    var greaterArray = [Int]()
    var equalArray = [Int]()
    if arr.count > 1 {
        let pivot = arr[arr.count/2]
        for x in arr {
           //If x value (element of array) is getting compire with pivot element.
            //elements less than pivot, then appen
            if x < pivot {
                lessArray.append(x)
            } else if x > pivot {
                greaterArray.append(x)
            } else if x == pivot {
                equalArray.append(x)
            }
            print("\(lessArray) - \(pivot) - \(greaterArray)")
        }
        return quickSort(arr: lessArray) + equalArray + quickSort(arr: greaterArray)
        //Recursive method calling.
    }
    
   return arr
}

print("Quick Sorted : \(quickSort(arr: array))")

