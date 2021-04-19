//
//  7-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/29.
//

// Reverse Integer
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/
// https://leetcode.com/problems/reverse-integer/

// 整数反转
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnx13t/
// https://leetcode-cn.com/problems/reverse-integer/

// MARK: Pop and Push Digits & Check before Overflow

func reverse(_ x: Int) -> Int {
    var x = Int32(x)
    var overflow = (false, false)
    var result: Int32 = 0

    while x != 0 {
        // 除以 10 取商和余数
        let (quotient, remainder) = x.quotientAndRemainder(dividingBy: 10)

        // 乘以 10
        (result, overflow.0) = result.multipliedReportingOverflow(by: 10)
        // 加上余数
        (result, overflow.1) = result.addingReportingOverflow(remainder)

        // 溢出返回 0
        guard !overflow.0, !overflow.1 else {
            return 0
        }

        // 用商继续循环
        x = quotient
    }

    return Int(result)
}
