//
//  189-e4.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/19.
//

// Rotate Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/
// https://leetcode.com/problems/rotate-array/

// 旋转数组
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2skh7/
// https://leetcode-cn.com/problems/rotate-array/

// MARK: Using Reverse

func rotate(_ nums: inout [Int], _ k: Int) {
    // 右移长度不应超过数组元素个数
    let realK = k % nums.count

    // 实际右移长度大于 0 时才继续
    guard realK > 0 else {
        return
    }

    // 先翻转整个数组，再以 k 为分割线翻转两个子数组
    // nums = [1, 2, 3, 4, 5], k = 2
    // [5, 4, 3, 2, 1]
    // [4, 5, 3, 2, 1]
    // [4, 5, 1, 2, 3]
    nums.reverse()
    nums[..<realK].reverse()
    nums[realK...].reverse()
}
