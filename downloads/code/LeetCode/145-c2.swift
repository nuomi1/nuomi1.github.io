//
//  145-c2.swift
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

// MARK: 迭代

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []
    var stack: [TreeNode] = []
    var node = root
    var prev: TreeNode?

    while !stack.isEmpty || node != nil {
        while node != nil {
            stack.append(node!)
            node = node?.left
        }

        node = stack.removeLast()

        if node?.right == nil || node?.right === prev {
            result.append(node!.val)
            prev = node
            node = nil
        } else {
            stack.append(node!)
            node = node?.right
        }
    }

    return result
}
