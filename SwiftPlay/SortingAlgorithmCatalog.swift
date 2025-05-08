//
//  SortingAlgorithmCatalog.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation
class SortingAlgorithmCatalog {
    static let shared = SortingAlgorithmCatalog()
    
    private func selectionSort <T:Comparable>(_ list:[T]) -> [T] {
        guard list.count > 1 else {return list}
        
        var sortedList = list
        
        for currentIndex in 0..<sortedList.count - 1 {
            var smallestIndex = currentIndex
            
            for i in currentIndex + 1..<sortedList.count {
                if sortedList[i] < sortedList[smallestIndex] {
                    smallestIndex = i
                }
            }
            if smallestIndex != currentIndex {
                sortedList.swapAt(smallestIndex,currentIndex)
            }
        }
        return sortedList
    }

    private func bubbleSort(_ list:inout [Int]) {
        let n = list.count
        for _ in 0..<n-1 {
            for i in 0..<n-1 {
                if list[i] > list[i+1] {
                    print("Swapping \(list[i]) and \(list[i+1])")
                    list.swapAt(i, i+1)
                }
            }
            print(list)
        }
    }
}

extension SortingAlgorithmCatalog {

    public func testBubbleSort() {
        var list = [5,4,3,2,1]
        bubbleSort(&list)
        print(list)
    }
    
    
    public func testSelectionSort() {
        let list = [3,2,5,1,3,8,23,1,2,9,2,4,7,2,0]
        print(selectionSort(list))
        
        let names = ["ba", "ab", "ac"]
        print(selectionSort(names))
    }
}


