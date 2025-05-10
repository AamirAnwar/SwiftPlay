//
//  Stack.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-09.
//

import Foundation

class Stack<T> {
    private var items:[T] = []
    var isEmpty:Bool {items.isEmpty}
    var peek:T? {items.last}
    var count:Int {items.count}
    func push(_ element:T) {
        items.append(element)
    }
    
    func pop() -> T? {
        return items.popLast()
    }
}


