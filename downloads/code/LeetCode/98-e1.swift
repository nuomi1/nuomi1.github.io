//
//  98-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/13.
//

// Validate Binary Search Tree
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/625/
// https://leetcode.com/problems/validate-binary-search-tree/

// 验证二叉搜索树
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn08xg/
// https://leetcode-cn.com/problems/validate-binary-search-tree/

// MARK: Recursive Traversal with Valid Range

func isValidBST(_ root: TreeNode?) -> Bool {
    return isValidBSTHelper(root, nil, nil)
}

private func isValidBSTHelper(_ root: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
    guard let root = root else {
        return true
    }

    if let min = min, root.val <= min {
        return false
    }

    if let max = max, root.val >= max {
        return false
    }

    // 验证左子树时，当前结点值为最大值
    // 验证右子树时，当前结点值为最小值
    return isValidBSTHelper(root.left, min, root.val) && isValidBSTHelper(root.right, root.val, max)
}
