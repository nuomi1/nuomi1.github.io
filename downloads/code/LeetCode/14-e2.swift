//
//  14-e2.swift
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

// MARK: Vertical scanning

func longestCommonPrefix(_ strs: [String]) -> String {
    // 第 1 个当做前缀
    guard let prefixString = strs.first else {
        return ""
    }

    // 遍历前缀
    for prefixStringIndex in prefixString.indices {
        let prefixCount = prefixStringIndex.utf16Offset(in: prefixString)
        let character = prefixString[prefixStringIndex]

        // 遍历剩余字符串
        for strsIndex in strs.indices.dropFirst() {
            if prefixCount == strs[strsIndex].count || strs[strsIndex][prefixStringIndex] != character {
                return String(prefixString[..<prefixStringIndex])
            }
        }
    }

    return prefixString
}
