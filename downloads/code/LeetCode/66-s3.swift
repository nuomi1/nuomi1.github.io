//
//  66-s3.swift
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
    // 最高位补零
    var digits = [0] + digits

    // 个位进一
    digits[digits.indices.last!] += 1

    // 除最高位外，从低位到高位，逢十进一
    for currentIndex in digits.indices.dropFirst().reversed() {
        if digits[currentIndex] >= 10 {
            let previousIndex = digits.index(before: currentIndex)
            digits[currentIndex] -= 10
            digits[previousIndex] += 1
        }
    }

    // 最高位为零时，移除并返回剩余元素
    if digits.first! == 0 {
        return Array(digits.dropFirst())
    }

    return digits
}
