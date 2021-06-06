//
//  94-c1.swift
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

// MARK: 递归

func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []

    inorderTraversalHelper(root, &result)

    return result
}

private func inorderTraversalHelper(_ root: TreeNode?, _ result: inout [Int]) {
    guard let root = root else {
        return
    }

    inorderTraversalHelper(root.left, &result)
    result.append(root.val)
    inorderTraversalHelper(root.right, &result)
}
