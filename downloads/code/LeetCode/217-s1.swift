//
//  217-s1.swift
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

func containsDuplicate(_ nums: [Int]) -> Bool {
    // 比较原始数组和构造集合（元素互不相同 / hashValue）的个数
    return nums.count != Set(nums).count
}
