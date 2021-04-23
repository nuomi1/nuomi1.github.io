//
//  13-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/28.
//

// Roman to Integer
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/102/math/878/
// https://leetcode.com/problems/roman-to-integer/

// 罗马数字转整数
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn4n7c/
// https://leetcode-cn.com/problems/roman-to-integer/

func romanToInt(_ s: String) -> Int {
    let table1: [Substring: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    ]

    let table2: [Substring: Int] = [
        "IV": 4,
        "IX": 9,
        "XL": 40,
        "XC": 90,
        "CD": 400,
        "CM": 900,
    ]

    var string = s
    var result = 0

    while !string.isEmpty {
        if let number = table2[string.prefix(2)] {
            result += number
            string.removeFirst(2)
        } else if let number = table1[string.prefix(1)] {
            result += number
            string.removeFirst(1)
        }
    }

    return result
}
