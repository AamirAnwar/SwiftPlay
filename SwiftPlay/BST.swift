//
//  BST.swift
//  SwiftPlay
//
//  Created by Aamir Anwar on 2025-05-10.
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
    
    func search(_ val:Int) -> Node? {
        guard let root = root else {return nil}
        return searchUtil(root, val)
    }
    
    func searchUtil(_ root:Node?, _ val:Int) -> Node? {
        guard let root = root else {return nil}
        if root.data > val {
            return searchUtil(root.left, val)
        } else if root.data < val {
            return searchUtil(root.right, val)
        }
        return root
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
    
    func deleteValue(_ val:Int) {
        guard let root = root else {return}
        self.root = deleteUtil(root, val)
    }
    
    func deleteUtil(_ root:Node?, _ val:Int) -> Node? {
        guard let node = root else {return nil}
        if node.data > val {
            node.left = deleteUtil(node.left, val)
        } else if node.data < val {
            node.right = deleteUtil(node.right, val)
        } else {
            
            if node.left == nil && node.right == nil {
                return nil
            } else if node.left == nil {
                return node.right
            } else if node.right == nil {
                return node.left
            } else {
                // Has left and right children
                let successor = inorderSuccessor(node.right!)
                node.data = successor.data
                node.right = deleteUtil(node.right, successor.data)
            }
        }
        
        return node
    }
    
    func inorderSuccessor(_ root:Node) -> Node {
        var node = root
        while let leftChild = node.left {
            node = leftChild
        }
        return node
    }
}
