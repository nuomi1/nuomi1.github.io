//
//  66-s2.swift
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

    // 进位
    var carry = 1

    // 扫描下标逆序
    for index in digits.indices.reversed() {
        // 把进位与当前位相加，除以 10 取得商和余数
        (carry, digits[index]) = (digits[index] + carry).quotientAndRemainder(dividingBy: 10)

        // 不需要进位时直接退出
        if carry == 0 {
            return digits
        }
    }

    // 顺序第 2 位是 9，进位
    digits.insert(carry, at: 0)

    return digits
}
