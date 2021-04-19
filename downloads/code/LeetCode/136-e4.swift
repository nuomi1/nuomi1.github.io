//
//  136-e4.swift
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

// MARK: Bit Manipulation

func singleNumber(_ nums: [Int]) -> Int {
    // 异或运算
    // a ^ 0 = a
    // a ^ a = 0
    // a ^ b ^ a = a ^ a ^ b = 0 ^ b = b
    return nums.reduce(0) { $0 ^ $1 }
}
