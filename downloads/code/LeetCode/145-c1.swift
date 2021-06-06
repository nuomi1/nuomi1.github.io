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

// MARK: 递归

func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []

    postorderTraversalHelper(root, &result)

    return result
}

private func postorderTraversalHelper(_ root: TreeNode?, _ result: inout [Int]) {
    guard let root = root else {
        return
    }

    postorderTraversalHelper(root.left, &result)
    postorderTraversalHelper(root.right, &result)
    result.append(root.val)
}
