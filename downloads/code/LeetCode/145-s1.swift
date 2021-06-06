//
//  145-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/6/5.
//

// Binary Tree Postorder Traversal
// https://leetcode.com/explore/learn/card/data-structure-tree/134/traverse-a-tree/930/
// https://leetcode.com/problems/binary-tree-postorder-traversal/

// 二叉树的后序遍历
// https://leetcode-cn.com/leetbook/read/data-structure-binary-tree/xebrb2/
// https://leetcode-cn.com/problems/binary-tree-postorder-traversal/

func postorderTraversal2(_ root: TreeNode?) -> [Int] {
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
            stack.append(node.val)

            if let rightNode = node.right {
                stack.append(rightNode)
            }

            if let leftNode = node.left {
                stack.append(leftNode)
            }
        default:
            assertionFailure()
        }
    }

    return result
}
