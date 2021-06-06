//
//  94-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/6/4.
//

// Binary Tree Inorder Traversal
// https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/929/
// https://leetcode.com/problems/binary-tree-inorder-traversal/

// 二叉树的中序遍历
// https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xecaj6/
// https://leetcode-cn.com/problems/binary-tree-inorder-traversal/

func inorderTraversal(_ root: TreeNode?) -> [Int] {
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

            stack.append(node.val)

            if let leftNode = node.left {
                stack.append(leftNode)
            }
        default:
            assertionFailure()
        }
    }

    return result
}
