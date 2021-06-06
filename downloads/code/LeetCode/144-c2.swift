//
//  144-c2.swift
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

// MARK: 迭代

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []
    var stack: [TreeNode] = []
    var node = root

    while !stack.isEmpty || node != nil {
        while node != nil {
            result.append(node!.val)
            stack.append(node!)
            node = node?.left
        }

        node = stack.removeLast()
        node = node?.right
    }

    return result
}
