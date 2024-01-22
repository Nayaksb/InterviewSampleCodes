import UIKit

class ValidBracket {
    var stack = StackArray()
    let validDict = ["{":"}", "(":")", "[":"]"]
    func inValid(_ S: String) -> Bool {
        if S.count <= 1{
            return false
        }
        
        for char in S {
            if (char == "{") || (char == "(") || (char == "["){
                stack.push(String(char))
            }else if(char == "}") || (char == ")") || (char == "]"){
                if let last = stack.peek(){
                    
                }
            }
        }
        
        
        return false
    }
}
struct StackArray {
    private var items: [String] = []
    
    func peek() -> String {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    
    mutating func pop() -> String {
        return items.removeFirst()
    }
  
    mutating func push(_ element: String) {
        items.insert(element, at: 0)
    }
}
