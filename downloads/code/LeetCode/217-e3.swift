//
//  217-e3.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/20.
//

// Contains Duplicate
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/
// https://leetcode.com/problems/contains-duplicate/

// 存在重复元素
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x248f5/
// https://leetcode-cn.com/problems/contains-duplicate/

// MARK: Hash Table

func containsDuplicate(_ nums: [Int]) -> Bool {
    var counts: Set<Int> = []

    for num in nums {
        if !counts.insert(num).inserted {
            return true
        }
    }

    return false
}
