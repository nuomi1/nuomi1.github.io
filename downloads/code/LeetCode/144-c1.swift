//
//  144-c1.swift
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

// MARK: 递归

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []

    preorderTraversalHelper(root, &result)

    return result
}

private func preorderTraversalHelper(_ root: TreeNode?, _ result: inout [Int]) {
    guard let root = root else {
        return
    }

    result.append(root.val)
    preorderTraversalHelper(root.left, &result)
    preorderTraversalHelper(root.right, &result)
}
