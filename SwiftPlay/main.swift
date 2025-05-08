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


print(twoSum([-1,2,3, 1], 0))
