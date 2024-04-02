import UIKit

public class SingleLLNode<T> {
    var data: T
    var next: SingleLLNode?
    var prev: SingleLLNode?
    
    public init(_ val: T) {
        self.data = val
        self.next = nil
        
    }
}

class LinkedList<T> {
    public typealias Node = SingleLLNode<T>
    
    public var head: Node?
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func append(val: T){
        let newNode = Node(val)
        if let node = last {
            newNode.prev = node
            node.next = newNode
        }else{
            head = newNode
        }
    }
    
    public func printLL() -> String {
        var printString = "["
        guard var node = head else {
            print("\(printString)]")
            return printString + "]"
        }
        while let next = node.next {
            printString += "\(node.data), "
            node = next
        }
        printString += "\(node.data)]"
        print(printString)
         return printString
    }
    
    //Added function
    func reverse(_ node: Node?) -> Node? {
        var prev: Node? = nil
        var current = node
        var next: Node?
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
    
    //Recursive
    func reverseList(_ head: Node?) -> Node? {
        return reverseListRecursively(head)
    }

    func reverseListRecursively(_ head: Node?) -> Node? {
        if let head = head {
            if head.next == nil {
                return head
            }
            
            let reversedListHead = reverseListRecursively(head.next)
            
            head.next?.next = head
            head.next = nil
            
            return reversedListHead
        } else {
            return nil
        }
    }


    
    
}

let originalLL = LinkedList<Int>()
originalLL.append(val: 2)
originalLL.append(val: 6)
originalLL.append(val: 7)
originalLL.append(val: 8)
originalLL.append(val: 9)
originalLL.append(val: 0)
originalLL.append(val: 3)
        
print("Given linked list")
originalLL.printLL()
        
originalLL.head = originalLL.reverse(originalLL.head)
print("\nIterative Reversed linked list ")
originalLL.printLL()

originalLL.head = originalLL.reverseList(originalLL.head)
print("\nRecursive Reversed linked list ")
originalLL.printLL()
   
