//
//  387-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/30.
//

// First Unique Character in a String
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/881/
// https://leetcode.com/problems/first-unique-character-in-a-string/

// 字符串中的第一个唯一字符
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn5z8r/
// https://leetcode-cn.com/problems/first-unique-character-in-a-string/

// MARK: Linear time solution

func firstUniqChar(_ s: String) -> Int {
    // 转换字符串到 [元素: 个数] 的字典
    let counts = s.reduce(into: [Character: Int]()) {
        $0[$1, default: 0] += 1
    }

    // 遍历字符串，当个数为 1 时退出
    for (index, character) in s.enumerated() {
        if counts[character, default: 0] == 1 {
            return index
        }
    }

    return -1
}
