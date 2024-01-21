import UIKit

struct IndianApp {
    var appName : String
    var perAppPrice : Double
    var users : Int
}

let appSales = [IndianApp(appName: "Zomato", perAppPrice: 1.7, users: 5000), IndianApp(appName: "Swigy", perAppPrice: 0.0, users: 50000), IndianApp(appName: "Zepto", perAppPrice: 1.5, users: 6000)]

//print(appSales)

//Filter
let priceApps =  appSales.filter { $0.perAppPrice == 0.0 }
//print(priceApps)

//MAP
let users = appSales.map { $0.perAppPrice * 0.7 }
//print(users)

//Reduce
let array = [3, 5, 7, 2, 90]
let reducedValue = array.reduce (100, +)
//print(reducedValue)
let reduceVal = appSales.reduce(0, { $0 + $1.users } )
//print(reduceVal)


//Chaining

let totalEarning = appSales.map { $0.perAppPrice * Double($0.users) * 0.7 }.reduce(0, +)
//print(totalEarning)

//Compact Map
let chainArray = [ 1, nil, 0, nil, 23, 7, 43, nil]
let val = chainArray.compactMap { $0 }
//print(val)

//Flat Map

let araayOfArr = [[1, 2, 3],
                 [1, 3, 4,7]]
print(araayOfArr.flatMap { $0.map { $0 * 2 } }.sorted())
