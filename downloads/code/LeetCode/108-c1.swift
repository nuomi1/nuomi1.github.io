//
//  108-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/16.
//

// Convert Sorted Array to Binary Search Tree
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/94/trees/631/
// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

// 将有序数组转换为二叉搜索树
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xninbt/
// https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/

// MARK: 中序遍历

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    return sortedArrayToBSTHelper(nums, nums.indices)
}

private func sortedArrayToBSTHelper(_ nums: [Int], _ range: Range<Int>) -> TreeNode? {
    guard range.lowerBound < range.upperBound else {
        return nil
    }

    // 防止溢出
    let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

    let node = TreeNode(nums[middleIndex])

    // 跳过 middleIndex
    node.left = sortedArrayToBSTHelper(nums, range.lowerBound ..< middleIndex)
    node.right = sortedArrayToBSTHelper(nums, middleIndex + 1 ..< range.upperBound)

    return node
}
