//
//  main.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-08.
//

import Foundation

class Node {
    var data:Int
    var left:Node?
    var right:Node?
    init(data: Int, left: Node? = nil, right: Node? = nil) {
        self.data = data
        self.left = left
        self.right = right
    }
}

class BinarySearchTree {
    var root:Node?
    
    init(root:Node) {
        self.root = root
    }
    
    private func insertValue(_ val:Int, node:Node?) -> Node? {
        guard let node = node else {
            return Node(data:val)
        }
        if node.data > val {
            node.left = insertValue(val, node:node.left)
        } else if node.data < val {
            node.right = insertValue(val, node:node.right)
        }
        return node
    }
    
    // Runtime O(h) worst case and best case O(logn)
    func insert(_ val:Int) {
        self.root = insertValue(val, node:root)
    }
    
    func inorderTraversal() -> [Int] {
        var result = [Int]()
        inorder(self.root, &result)
        return result
    }
    
    func inorder(_ root:Node?, _ result:inout [Int]) {
        guard let root = root else {
            return
        }
        inorder(root.left, &result)
        result.append(root.data)
        inorder(root.right, &result)
    }
}

var tree = BinarySearchTree(root:Node(data:2))
var input = [5,4,3,1,0,6,8,2,3,41,7,6,34,7,3]
for x in input {
    tree.insert(x)
}
print(tree.inorderTraversal())



