//
//  144-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/6/3.
//

// Binary Tree Preorder Traversal
// https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/928/
// https://leetcode.com/problems/binary-tree-preorder-traversal/

// 二叉树的前序遍历
// https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xeywh5/
// https://leetcode-cn.com/problems/binary-tree-preorder-traversal/

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else {
        return []
    }

    var result: [Int] = []
    var stack: [Any] = [root]

    while !stack.isEmpty {
        let node = stack.removeLast()

        switch node {
        case let value as Int:
            result.append(value)
        case let node as TreeNode:
            if let rightNode = node.right {
                stack.append(rightNode)
            }

            if let leftNode = node.left {
                stack.append(leftNode)
            }

            stack.append(node.val)
        default:
            assertionFailure()
        }
    }

    return result
}
