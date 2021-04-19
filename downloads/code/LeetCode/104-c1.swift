//
//  104-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/12.
//

// Maximum Depth of Binary Tree
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/555/
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

// 二叉树的最大深度
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnd69e/
// https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/

// MARK: 深度优先搜索

func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }

    // 递归获取左右子树的最大深度
    return max(maxDepth(root.left), maxDepth(root.right)) + 1
}
