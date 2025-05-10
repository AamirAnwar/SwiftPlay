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
    
    public func testBST() {
        var tree = BinarySearchTree(root:Node(data:2))
        var input = [5,4,3,1,0,6,8,2,3,41,7,6,34,7,3]
        for x in input {
            tree.insert(x)
        }
        print(tree.inorderTraversal())

        if let nodeLookup = tree.search(100) {
            print("Found node with data \(nodeLookup.data)")
        }


        let valuesToDelete = [7,8,0,41]
        for val in valuesToDelete {
            tree.deleteValue(val)
            print(tree.inorderTraversal())
        }
    }
}
