import UIKit

//func addtwoNumbers (num1: Int, num2: Int) -> Int {
//    return num1 + num2
//}
//
//typealias addTwoNumClouser = (Int, Int) -> Int
//
//let addTwoNum :  addTwoNumClouser = {
//    (num1, num2) in
//    return num1 + num2
//}
//print(addTwoNum(1, 2))


func printGoodMorning(isMorning: Bool, name: () -> String){
    if isMorning {
        debugPrint("Hi Good Morning \(name())")
    }
    
}
func assignName(name: String) -> String{
    return name
}
printGoodMorning(isMorning: false) { () -> String in
    assignName(name: "Satya")
    
}
