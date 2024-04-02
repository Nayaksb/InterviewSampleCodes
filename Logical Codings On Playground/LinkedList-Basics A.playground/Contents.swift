import UIKit

public class LLNode<T> {
    
    var value: T
    var next: LLNode?
    var previous: LLNode?
    
    
    public init(val: T){
        self.value = val
    }
}

public class LinkedList<T>{
    public typealias Node = LLNode<T>
    
    private var head: Node?
    
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
    
    public func append(value: T) {
        let newNode = Node(val: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        }else{
            head = newNode
        }
    }
    public func node(atIndex index: Int) -> Node{
      
        if index == 0 {
            return head!
        }
        var node = head
        if self.count <= index {
            Swift.print("The index \(index) passed is invalid, list length is \(self.count)!")
            return node!

        }
        for _ in 0..<index {
                node = node?.next
                if node == nil {
                    break
                }
        }
        
        return node!
    }
    
    public var count: Int {
        guard var node = head else { return 0 }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    public var print : String {
        var stringArray = "["
        guard var node = head else { return stringArray + "]" }
        while let next = node.next {
            stringArray += "\(node.value), "
            node = next
        }
        stringArray += "\(node.value)"
        return stringArray + "]"
    }
    
    public func insert(value: T, atIndex index: Int){
        let newNode = Node(val: value)
        
        if self.count == 0 {
            head = newNode
        }else if self.count <= index  {
            Swift.print("The index passed is invalid!, node added at end.")
            append(value: value)
        }else if index == 0 {
            newNode.next = head
            head?.previous = newNode
            head = newNode
        }else {
            let prev = node(atIndex: index - 1)
            let nextNode = prev.next
            
            newNode.previous = prev
            newNode.next = nextNode
            
            
            prev.next = newNode
            nextNode?.previous = newNode
            
        }
    }
    
    public func remove(atIndex index: Int){
        Swift.print("\(self.count) --- \(index)")
        if self.count <= index {
            Swift.print("The index is out of bound!")
        }else {
            let targetNode = node(atIndex: index)
            remove(node: targetNode)
        }
        
    }
    public func remove(node: Node) {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        }else {
            head = next
        }
        next?.previous = prev
    
        
    }
    public func remove(atIndex index: Int, noOfNodes: Int) {
        
        for ind in index..<index + noOfNodes {
            remove(atIndex: ind)
        }
    }
   
}

let mySentance = LinkedList<String>()
mySentance.insert(value: "Satya", atIndex: 9)

mySentance.insert(value: "Nayak", atIndex: 2)

mySentance.append(value: "This")
mySentance.append(value: "is")
mySentance.append(value: "a")
mySentance.append(value: "list")
mySentance.node(atIndex: 0).value //Not working for empty
mySentance.node(atIndex: 1).value
mySentance.node(atIndex: 2).value
mySentance.node(atIndex: 10).value

print(mySentance.print)
mySentance.remove(atIndex: 2)
print(mySentance.print)
mySentance.remove(atIndex: 1, noOfNodes: 2)
print(mySentance.print)


