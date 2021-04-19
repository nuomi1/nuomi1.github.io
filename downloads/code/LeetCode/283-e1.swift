//
//  283-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/24.
//

// Move Zeroes
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/567/
// https://leetcode.com/problems/move-zeroes/

// 移动零
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2ba4i/
// https://leetcode-cn.com/problems/move-zeroes/

// MARK: Space Sub-Optimal

func moveZeroes(_ nums: inout [Int]) {
    // 统计 0 的个数
    let count = nums.filter { $0 == 0 }.count
    // 删除所有 0
    nums.removeAll { $0 == 0 }
    // 末尾补 0
    nums.append(contentsOf: Array(repeating: 0, count: count))
}
