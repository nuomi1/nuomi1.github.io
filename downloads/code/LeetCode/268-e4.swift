//
//  268-e4.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/2/3.
//

// Missing Number
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/722/
// https://leetcode.com/problems/missing-number/

// 缺失数字
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnj4mt/
// https://leetcode-cn.com/problems/missing-number/

// MARK: Gauss' Formula

func missingNumber(_ nums: [Int]) -> Int {
    var count = 0
    var total = 0

    for num in nums {
        count += 1
        total += num
    }

    return (count + 1) * count / 2 - total
}
