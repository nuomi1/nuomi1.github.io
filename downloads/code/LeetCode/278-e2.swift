//
//  278-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/18.
//

// First Bad Version
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/96/sorting-and-searching/774/
// https://leetcode.com/problems/first-bad-version/

// 第一个错误的版本
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnto1s/
// https://leetcode-cn.com/problems/first-bad-version/

// MARK: Binary Search

func firstBadVersion(_ n: Int) -> Int {
    var left = 1
    var right = n

    while left != right {
        let middle = left + (right - left) / 2

        if isBadVersion(middle) {
            right = middle
        } else {
            left = middle + 1
        }
    }

    return left
}
