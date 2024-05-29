import Foundation

enum CustomOptional<T>{
    case some(T)
    case none
    init(_ val: T){
        self = .some(val)
    }
    var unwrapped: T {
        switch self {
        case .some(let val):
            return val
        case .none:
            fatalError("CustomOptional: trying to unwrap nil value")
        }
    }
}

let myIntVal: CustomOptional<Int> = .some(5)
print(myIntVal)
print(myIntVal.unwrapped)
let myInt: CustomOptional<Int> = .none
print(myInt)
print(myInt.unwrapped)

