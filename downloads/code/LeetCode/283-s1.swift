//
//  283-s1.swift
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

// MARK: BAD (O(nlog(n)))

func moveZeroes(_ nums: inout [Int]) {
    for i in nums.indices.dropLast() {
        for j in nums.indices.dropLast(i + 1) {
            // 依次把 0 移动到末尾
            if nums[j] == 0 {
                nums.swapAt(j, j + 1)
            }
        }
    }
}
