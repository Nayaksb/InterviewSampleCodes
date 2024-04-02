import UIKit

func isValid(_ inputStr: String) -> Bool {
    guard inputStr.count % 2 == 0 else { return false }
    var array: [Character] = []
    for ch in inputStr {
        switch ch {
        case "(": array.append(")")
        case "[": array.append("]")
        case "{": array.append("}")
        default:
            if array.isEmpty || array.removeLast() != ch {
                return false
            }
        }
    }
    
    return array.isEmpty
}
print("Given String [(){}()[{}[{}]()]()] is \(isValid("[(){}()[{}[{}]()]()]") ? "Valid" :"invalid")")

for i in 4...11 {
    let str = randomAlphanumericString(i)
    print("Given String = \(str) is \(isValid(str) ? "Valid" :"invalid")")
}

func randomAlphanumericString(_ length: Int) -> String {
   let letters = "{}[]()"
   let randomString = (0..<length).map{ _ in String(letters.randomElement()!) }.reduce("", +)
   return randomString
}
