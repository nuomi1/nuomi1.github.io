//
//  14-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/5.
//

// Longest Common Prefix
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/887/
// https://leetcode.com/problems/longest-common-prefix/

// 最长公共前缀
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnmav1/
// https://leetcode-cn.com/problems/longest-common-prefix/

func longestCommonPrefix(_ strs: [String]) -> String {
    var prefix = ""

    guard let prefixString = strs.first else {
        return prefix
    }

    // 第一个字符串与剩下所有字符串逐一对比前缀，前缀逐渐加一
    for index in prefixString.indices {
        let tempPrefix = prefixString[...index]

        for string in strs.dropFirst() {
            if !string.hasPrefix(tempPrefix) {
                return prefix
            }
        }

        prefix = String(tempPrefix)
    }

    return prefix
}
