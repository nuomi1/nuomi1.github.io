//
//  101-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/14.
//

// Symmetric Tree
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/627/
// https://leetcode.com/problems/symmetric-tree/

// 对称二叉树
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn7ihv/
// https://leetcode-cn.com/problems/symmetric-tree/

// MARK: Recursive

func isSymmetric(_ root: TreeNode?) -> Bool {
    return isSymmetricHelper(root?.left, root?.right)
}

private func isSymmetricHelper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    switch (left, right) {
    case let (.some(lhs), .some(rhs)) where lhs.val == rhs.val: // 左右结点同时存在且值相等
        return isSymmetricHelper(lhs.left, rhs.right) && isSymmetricHelper(rhs.left, lhs.right)
    case (nil, nil): // 左右结点同时不存在
        return true
    default: // 左右结点只存在一个 或 同时存在但值不相等
        return false
    }
}
