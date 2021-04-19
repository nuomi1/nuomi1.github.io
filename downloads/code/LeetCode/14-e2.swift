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
    guard !strs.isEmpty else {
        return ""
    }

    // 第 1 个当做前缀
    let prefix = strs.first!

    // 遍历前缀
    for i in prefix.indices {
        let prefixCount = i.utf16Offset(in: prefix)
        let character = prefix[i]

        // 遍历剩余字符串
        for j in strs.indices.dropFirst() {
            if prefixCount == strs[j].count || strs[j][i] != character {
                return String(prefix[..<i])
            }
        }
    }

    return prefix
}
