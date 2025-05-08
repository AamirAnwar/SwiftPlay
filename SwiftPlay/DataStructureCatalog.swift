//
//  DataStructureCatalog.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation

class DataStructureCatalog {
    public static let shared = DataStructureCatalog()
    public func testQueue() {
        let queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        print(queue.dequeue())
        print(queue.dequeue())
        print(queue.dequeue())
    }
}


class Queue<Element> {
    private var items : [Element] = []
    
    init() {}
    
    init(elements:[Element]) {
        self.items = elements
    }
    
    var isEmpty:Bool {
        return items.isEmpty
    }
    
    var count:Int {
        return items.count
    }
    
    func enqueue(_ element:Element) {
        items.append(element)
    }
    
    func dequeue() -> Element? {
        guard items.isEmpty == false else {
            return nil
        }
        return items.removeFirst()
    }
    
    func front() -> Element? {
        return items.first
    }
    
    func back() -> Element? {
        return items.last
    }
}


