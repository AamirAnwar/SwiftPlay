//
//  DataStructureCatalog.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation

class DataStructureCatalog {
    public static let shared = DataStructureCatalog()
    
    public func testStack() {
        let stack = Stack<Int>()
        stack.push(1)
        stack.push(1)
        stack.push(1)
        stack.push(1)
        while let element = stack.pop() {
            print("Popped element \(element)")
        }
    }
    
    public func testLinkedList() {
        let list = LinkedList<Int>()
        list.append(LinkedListNode<Int>(next:nil, data:1))
        list.append(LinkedListNode<Int>(next:nil, data:2))
        list.append(LinkedListNode<Int>(next:nil, data:3))
        list.displayList()
        print(list.count)
        list.reverse()
        list.displayList()
        print(list.count)
    }
    
    public func testQueue() {
        let queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        while let element = queue.dequeue() {
            print("Dequeue \(element)")
        }
    }
}
