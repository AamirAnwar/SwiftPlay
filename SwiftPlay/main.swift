//
//  main.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation


func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var k = 0
    for i in 0..<nums.count {
        if nums[i] != val {
            nums[k] = nums[i]
            k += 1
        }
    }
    
    return k
}

//var nums = [0,1,2,2,3,0,4,2]
//print(removeElement(&nums, 2))

var nums = [3,2,2,3]
print(removeElement(&nums, 3))

