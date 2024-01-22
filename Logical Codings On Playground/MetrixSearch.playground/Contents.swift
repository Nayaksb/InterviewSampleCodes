import UIKit

func searchMetric(metrixArray: [[Int]], target: Int) -> Bool{
    var targetArray = [Int]()
    
    for arrays in metrixArray {
        targetArray = arrays
        for item in targetArray {
            if item == target {
                return true
            }
        }
    }
    
    return false
}

searchMetric(metrixArray: [[2, 8 ,9 ,0], [9, 8, 5, 7], [3, 0, 6, 1]], target: 99)

