//
//  94-c2.swift
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

// MARK: 迭代

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []
    var stack: [TreeNode] = []
    var node = root

    while !stack.isEmpty || node != nil {
        while node != nil {
            stack.append(node!)
            node = node?.left
        }

        node = stack.removeLast()
        result.append(node!.val)
        node = node?.right
    }

    return result
}
