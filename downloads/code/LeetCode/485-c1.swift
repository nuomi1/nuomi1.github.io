//
//  485-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/1.
//

// Max Consecutive Ones
// https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3238/
// https://leetcode.com/problems/max-consecutive-ones/

// 最大连续 1 的个数
// https://leetcode-cn.com/problems/max-consecutive-ones/

// MARK: 一次遍历

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxCount = 0
    var currentCount = 0

    for number in nums {
        if number == 1 {
            currentCount += 1
        } else {
            maxCount = max(currentCount, maxCount)
            currentCount = 0
        }
    }

    maxCount = max(currentCount, maxCount)

    return maxCount
}
