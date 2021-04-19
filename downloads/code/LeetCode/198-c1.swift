//
//  198-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/22.
//

// House Robber
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/97/dynamic-programming/576/
// https://leetcode.com/problems/house-robber/

// 打家劫舍
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnq4km/
// https://leetcode-cn.com/problems/house-robber/

// MARK: 动态规划

func rob(_ nums: [Int]) -> Int {
    var last = 0
    var now = 0

    for num in nums {
        (last, now) = (now, max(now, last + num))
    }

    return now
}
