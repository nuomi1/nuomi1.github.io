//
//  191-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/29.
//

// Number of 1 Bits
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/565/
// https://leetcode.com/problems/number-of-1-bits/

// 位1的个数
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn1m0i/
// https://leetcode-cn.com/problems/number-of-1-bits/

// MARK: Loop and Flip

func hammingWeight(_ n: Int) -> Int {
    var bits = 0
    var mask = 1

    for _ in 0 ..< Int32.bitWidth {
        if (n & mask) != 0 {
            bits += 1
        }

        mask <<= 1
    }

    return bits
}
