//
//  102-c1.swift
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

// MARK: 广度优先搜索

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else {
        return []
    }

    var queue = [root]
    var result = [[Int]]()

    while !queue.isEmpty {
        var level = [Int]()
        let count = queue.count

        // 不能使用 queue.indices 因为 queue 被修改
        for _ in 0 ..< count {
            let node = queue.removeFirst()
            level.append(node.val)
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }

        result.append(level)
    }

    return result
}
