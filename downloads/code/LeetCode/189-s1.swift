//
//  189-s1.swift
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

// MARK: BAD (not in-place)

func rotate(_ nums: inout [Int], _ k: Int) {
    let realK = k % nums.count

    guard realK > 0 else {
        return
    }

    let prefixNums = nums.prefix(nums.count - realK)
    let suffixNums = nums.suffix(realK)

    nums = Array(suffixNums + prefixNums)
}
