import UIKit

print(ValidBracket().inValid("{{}()[]}") ? "Valid bracket pair." : "Not valid bracket pair.")

class ValidBracket {
    var stack = StackArray()
    let validDict = ["{":"}", "(":")", "[":"]"]
    
    func inValid(_ S: String) -> Bool {
        if S.count <= 1{
            return false
        }
        var i = 0
        for char in S {
            if ((char == "}") || (char == ")") || (char == "]")) && stack.isEmpty(){
                return false
            }
            if (char == "{") || (char == "(") || (char == "["){
                stack.push(String(char))
            }else if ((char == "}") || (char == ")") || (char == "]")){
                if let last = stack.peek(){
                    
                    if let validClosing = validDict[last] {
                        if validClosing == String(char){
                            stack.pop()
                        }else{
                            return false
                        }
                    }
                }
                else {
                    stack.push(String(char))
                }
            }
            i = i + 1
        }
        if stack.isEmpty() && i % 2 == 0{
            return true
        }else{
            return false
        }
    }
}



struct StackArray {
     var items: [String] = [String]()
    
    func peek() -> String? {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    
    mutating func pop() -> String {
        return items.removeFirst()
    }
  
    mutating func push(_ element: String) {
        items.insert(element, at: 0)
    }
    func isEmpty() -> Bool{
        return (items.last != nil) ? false : true
    }
}
