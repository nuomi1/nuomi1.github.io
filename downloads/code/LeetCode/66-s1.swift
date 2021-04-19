//
//  66-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/23.
//

// Plus One
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/
// https://leetcode.com/problems/plus-one/

// 加一
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2cv1c/
// https://leetcode-cn.com/problems/plus-one/

func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits

    // 扫描下标逆序
    for index in digits.indices.reversed() {
        // 当前位不到 9 时，直接加一然后退出
        if digits[index] < 9 {
            digits[index] += 1
            return digits
        }

        // 当前位是 9 时，置零
        // 往左继续执行
        digits[index] = 0
    }

    // 顺序第 2 位是 9，进位
    digits.insert(1, at: 0)

    return digits
}
