//
//  26-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/17.
//

// Remove Duplicates from Sorted Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/

// 删除排序数组中的重复项
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2gy9m/
// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/

// MARK: BAD (not in-place)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else {
        return nums.count
    }

    nums = Array(Set(nums)).sorted()

    return nums.count
}
