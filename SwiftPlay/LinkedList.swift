//
//  LinkedList.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation

class LinkedListNode<T> {
    var next:LinkedListNode<T>?
    var data:T
    init(next:LinkedListNode<T>?, data:T) {
        self.next = next
        self.data = data
    }
}

class LinkedList<T> {
    private var head:LinkedListNode<T>?
    var isEmpty:Bool {head == nil}
    var first:LinkedListNode<T>? {head}
    var last:LinkedListNode<T>? {
        guard var ref = head else {return nil}
        while let next = head?.next {
            ref = next
        }
        return ref
    }
    
    var count:Int {
        guard var ref = head else {return 0}
        var count = 1
        while let next = ref.next  {
            ref = next
            count += 1
        }
        return count
    }
    func append(_ node:LinkedListNode<T>?) {
        guard var ref = head else {
            self.head = node
            return
        }
        while let next = ref.next {
            ref = next
        }
        ref.next = node
    }
    
    func displayList() {
        guard var ref = head else {return}
        while ref.next != nil {
            print(ref.data, " -> ")
            ref = ref.next!
        }
        print("\(ref.data) -> nil")
    }
    
    func reverse() {
        guard head != nil else { return }
        head = reverseList(head, nil)
    }

    private func reverseList(_ current: LinkedListNode<T>?, _ prev: LinkedListNode<T>?) -> LinkedListNode<T>? {
        guard let current = current else { return prev }
        
        let next = current.next
        current.next = prev
        return reverseList(next, current)
    }
}
