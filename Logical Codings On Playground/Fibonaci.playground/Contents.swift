import UIKit

//Fibonaci = 1 1 2 3 5 8 13

func fibo(limit: Int) -> Int{
    var val = 0
    var first = 1
    var second = 1
    for _ in 2...limit {
        val = first + second
        first = second
        second = val
        print(val)
    }
    
    return val
}

fibo(limit: 6)
