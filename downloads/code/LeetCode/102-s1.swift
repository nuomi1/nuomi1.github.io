//
//  102-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/15.
//

// Binary Tree Level Order Traversal
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/628/
// https://leetcode.com/problems/binary-tree-level-order-traversal/

// 二叉树的层序遍历
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnldjj/
// https://leetcode-cn.com/problems/binary-tree-level-order-traversal/

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var result = [[Int]]()

    levelOrderHelper(root, 0, &result)

    return result
}

private func levelOrderHelper(_ root: TreeNode?, _ depth: Int, _ result: inout [[Int]]) {
    guard let root = root else {
        return
    }

    // 里层数组不存在时插入空数组
    if !result.indices.contains(depth) {
        result.insert([], at: depth)
    }

    result[depth].append(root.val)
    levelOrderHelper(root.left, depth + 1, &result)
    levelOrderHelper(root.right, depth + 1, &result)
}
