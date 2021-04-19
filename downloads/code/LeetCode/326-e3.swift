//
//  326-e3.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/27.
//

// Power of Three
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/102/math/745/
// https://leetcode.com/problems/power-of-three/

// 3的幂
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnsdi2/
// https://leetcode-cn.com/problems/power-of-three/

// MARK: Mathematics

func isPowerOfThree(_ n: Int) -> Bool {
    let logAns = log10(Double(n)) / log10(3.0)
    return n > 0 && logAns == Double(Int(logAns))
}
