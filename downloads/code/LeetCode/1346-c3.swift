//
//  1346-c3.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/8.
//

// Check If N and Its Double Exist
// https://leetcode.com/explore/learn/card/fun-with-arrays/527/searching-for-items-in-an-array/3250/
// https://leetcode.com/problems/check-if-n-and-its-double-exist/

// 检查整数及其两倍数是否存在
// https://leetcode-cn.com/problems/check-if-n-and-its-double-exist/

// MARK: 哈希表

func checkIfExist(_ arr: [Int]) -> Bool {
    let counts = arr.reduce(into: [Int: Int]()) {
        $0[$1, default: 0] += 1
    }

    for number in arr {
        if number != 0, counts[2 * number, default: 0] >= 1 {
            return true
        }

        if number == 0, counts[2 * number, default: 0] >= 2 {
            return true
        }
    }

    return false
}
