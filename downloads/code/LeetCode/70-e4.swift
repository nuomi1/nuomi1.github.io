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
    guard n > 2 else {
        return n
    }

    var i = 1
    var j = 1
    var count = 0

    for _ in 2 ... n {
        count = i + j
        j = i
        i = count
    }

    return count
}
