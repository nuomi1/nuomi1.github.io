//
//  70-e4.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/19.
//

// Climbing Stairs
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/97/dynamic-programming/569/
// https://leetcode.com/problems/climbing-stairs/

// 爬楼梯
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn854d/
// https://leetcode-cn.com/problems/climbing-stairs/

// MARK: Fibonacci Number

func climbStairs(_ n: Int) -> Int {
    // 滑动数组
    var first = 0
    var second = 0

    var result = 1

    for _ in 1 ... n {
        first = second
        second = result
        result = first + second
    }

    return result
}
