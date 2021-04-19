//
//  190-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/31.
//

// Reverse Bits
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/648/
// https://leetcode.com/problems/reverse-bits/

// 颠倒二进制位
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnc5vg/
// https://leetcode-cn.com/problems/reverse-bits/

// MARK: Bit by Bit

func reverseBits(_ n: Int) -> Int {
    var n = n
    var result = 0

    for bit in 0 ..< Int32.bitWidth {
        result += (n & 1) << (Int32.bitWidth - 1 - bit)
        n >>= 1
    }

    return result
}
