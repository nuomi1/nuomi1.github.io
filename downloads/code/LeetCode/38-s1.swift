//
//  38-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/4.
//

// Count and Say
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/886/
// https://leetcode.com/problems/count-and-say/

// 外观数列
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnpvdm/
// https://leetcode-cn.com/problems/count-and-say/

func countAndSay(_ n: Int) -> String {
    var result = "1"

    // result 存在默认值，遍历 n - 1 次
    for _ in 1 ..< n {
        var count = 0
        var current = result.first!
        var tempResult = ""

        for number in result {
            if number == current {
                count += 1
            } else {
                tempResult.append(contentsOf: "\(count)\(current)")
                count = 1
                current = number
            }
        }

        // 处理 result 最后一个元素
        tempResult.append(contentsOf: "\(count)\(current)")

        result = tempResult
    }

    return result
}
