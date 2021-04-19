//
//  461-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/30.
//

// Hamming Distance
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/762/
// https://leetcode.com/problems/hamming-distance/

// 汉明距离
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnyode/
// https://leetcode-cn.com/problems/hamming-distance/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let z = x ^ y

    var bits = 0
    var mask = 1

    for _ in 0 ..< Int32.bitWidth {
        if (z & mask) != 0 {
            bits += 1
        }

        mask <<= 1
    }

    return bits
}
