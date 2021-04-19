//
//  53-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/21.
//

// Maximum Subarray
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/97/dynamic-programming/566/
// https://leetcode.com/problems/maximum-subarray/

// 最大子序和
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn3cg3/
// https://leetcode-cn.com/problems/maximum-subarray/

// MARK: 动态规划

func maxSubArray(_ nums: [Int]) -> Int {
    var sum = nums.first!
    var maxSum = nums.first!

    for num in nums.dropFirst() {
        sum = max(sum + num, num)
        maxSum = max(maxSum, sum)
    }

    return maxSum
}
