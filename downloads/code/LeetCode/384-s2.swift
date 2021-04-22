//
//  384-s2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/23.
//

// Shuffle an Array
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/98/design/670/
// https://leetcode.com/problems/shuffle-an-array/

// 打乱数组
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn6gq1/
// https://leetcode-cn.com/problems/shuffle-an-array/

class Solution {
    let nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }

    func reset() -> [Int] {
        return nums
    }

    // https://yjk94.wordpress.com/2017/03/17/%E6%B4%97%E7%89%8C%E7%9A%84%E6%AD%A3%E7%A1%AE%E5%A7%BF%E5%8A%BF-knuth-shuffle%E7%AE%97%E6%B3%95/
    func shuffle() -> [Int] {
        var copy = nums

        for currentIndex in copy.indices {
            let anotherIndex = Int.random(in: copy.startIndex ... currentIndex)
            copy.swapAt(currentIndex, anotherIndex)
        }

        return copy
    }
}
