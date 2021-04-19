//
//  384-s1.swift
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

    func shuffle() -> [Int] {
        return nums.shuffled()
    }
}
