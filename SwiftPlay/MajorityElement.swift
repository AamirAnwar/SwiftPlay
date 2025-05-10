//
//  MajorityElement.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-10.
//

import Foundation

func majorityElement(_ nums:[Int]) -> Int {
    var hashMap:[Int:Int] = [:]
    for num in nums {
        hashMap[num, default:0] += 1
    }
    return hashMap.max(by: {$0.value < $1.value})?.key ?? 0
}
