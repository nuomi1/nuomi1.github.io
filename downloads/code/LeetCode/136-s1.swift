//
//  136-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/21.
//

// Single Number
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/
// https://leetcode.com/problems/single-number/

// 只出现一次的数字
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x21ib6/
// https://leetcode-cn.com/problems/single-number/

// MARK: BAD (not in-place)

func singleNumber(_ nums: [Int]) -> Int {
    let nums = nums.sorted()

    for currentIndex in nums.indices.dropLast() where currentIndex.isMultiple(of: 2) {
        let nextIndex = nums.index(after: currentIndex)
        if nums[currentIndex] != nums[nextIndex] {
            return nums[currentIndex]
        }
    }

    return nums.last!
}
