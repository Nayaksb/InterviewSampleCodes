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
    public func mergeLL(LL: LinkedList<T>) -> LinkedList<T> {
        var mergedLL: LinkedList<T>
        mergedLL = self
        mergedLL.last?.next = LL.head
        return mergedLL
    }
    
    public func sortLL(list: Node) -> Node {
        
        if head == nil || head?.next == nil {
            return head!
        }
        var temp: Node? = nil
        var slow = head
        var fast = head
        
        while fast != nil || fast?.next != nil {
            temp = slow
            slow = slow?.next
            fast = fast?.next?.next
        }
        temp?.next = nil
        let left: Node? = sortLL(list: head!)
        let right: Node? = sortLL(list: slow!)
        
        left?.next = right
        
        
    }
}

let sentanceOne = LinkedList<Int>()
sentanceOne.append(value: 3)
sentanceOne.append(value: 4)
sentanceOne.append(value: 1)
sentanceOne.append(value: 6)
print(sentanceOne.print)

let sentanceTwo = LinkedList<Int>()
sentanceTwo.append(value: 6)
sentanceTwo.append(value: 7)
sentanceTwo.append(value: 9)
sentanceTwo.append(value: 2)
sentanceTwo.append(value: 10)
print(sentanceTwo.print)

let mergedLL = sentanceOne.mergeLL(LL: sentanceTwo)
print(mergedLL.print)
