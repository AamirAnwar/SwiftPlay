//
//  main.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    for i in 0 ..< nums.count {
        let num = nums[i]
        if let remainderIndex = dict[target - num] {
            return [remainderIndex, i]
        } else {
            dict[num] = i
        }
    }
    return []
}


//print(twoSum([-1,2,3, 1], 0))


var list = LinkedList<Int>()
list.append(LinkedListNode<Int>(next:nil, data:1))
list.append(LinkedListNode<Int>(next:nil, data:2))
list.append(LinkedListNode<Int>(next:nil, data:3))

list.displayList()
print(list.count)


list.reverse()
list.displayList()
print(list.count)


