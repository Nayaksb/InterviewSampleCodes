import Foundation

//Recursive Top Down Approach

func mergeSort(_ array: inout [Int], _ left: Int, _ right: Int) {
    if left < right {
        let mid = left + (right - left) / 2
        
        mergeSort(&array, left, mid)
        mergeSort(&array, mid + 1, right)
        merge(&array, left, mid, right)
    }
}

func merge(_ array: inout [Int], _ left: Int, _ mid: Int, _ right: Int) {
    let leftArray = Array(array[left...mid])
    let rightArray = Array(array[(mid + 1)...right])
    
    var i = 0
    var j = 0
    var k = left
    
    while i < leftArray.count && j < rightArray.count {
        if leftArray[i] <= rightArray[j] {
            array[k] = leftArray[i]
            i += 1
        } else {
            array[k] = rightArray[j]
            j += 1
        }
        k += 1
    }
    
    while i < leftArray.count {
        array[k] = leftArray[i]
        i += 1
        k += 1
    }
    
    while j < rightArray.count {
        array[k] = rightArray[j]
        j += 1
        k += 1
    }
}

var numbers = [91, 52, 83, 23, 62, 15]
mergeSort(&numbers, 0, numbers.count - 1)
for number in numbers {
    print(number, terminator: " ")
}
