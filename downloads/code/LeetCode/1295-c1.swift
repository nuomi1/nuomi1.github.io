//
//  1295-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/2.
//

// Find Numbers with Even Number of Digits
// https://leetcode.com/explore/learn/card/fun-with-arrays/521/introduction/3237/
// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

// 统计位数为偶数的数字
// https://leetcode-cn.com/problems/find-numbers-with-even-number-of-digits/

// MARK: 枚举 + 数学

func findNumbers(_ nums: [Int]) -> Int {
    var result = 0

    for var number in nums {
        var count = 0

        while number != 0 {
            count += 1
            number /= 10
        }

        if count.isMultiple(of: 2) {
            result += 1
        }
    }

    return result
}
