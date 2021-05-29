//
//  414-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/16.
//

// Third Maximum Number
// https://leetcode.com/explore/learn/card/fun-with-arrays/523/conclusion/3231/
// https://leetcode.com/problems/third-maximum-number/

// 第三大的数
// https://leetcode-cn.com/problems/third-maximum-number/

func thirdMax(_ nums: [Int]) -> Int {
    var counts: [Int] = []

    for number in nums {
        if counts.firstIndex(of: number) != nil {
            continue
        }

        if let index = counts.firstIndex(where: { $0 > number }) {
            counts.insert(number, at: index)
        } else {
            counts.append(number)
        }

        if counts.count > 3 {
            counts.removeFirst()
        }
    }

    return counts.count < 3 ? counts.last! : counts.first!
}
