import UIKit

//Check whether number exists in form of 4n+1 or not
func checkNumber(_ num: Int) -> Bool {
    var low = 0
    var high = num
    while low <= high {
        let mid: Int = low + (high - low)/2
        let formattedNum: Int = 4*mid + 1
        if formattedNum == num {
            return true
        }
        if formattedNum > num {
            high = mid - 1
        }else {
            low = mid + 1
        }
    }
    return false
}

checkNumber(5)
checkNumber(6)
checkNumber(9)
