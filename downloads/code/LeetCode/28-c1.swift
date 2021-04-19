//
//  28-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/3.
//

// Implement strStr()
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/885/
// https://leetcode.com/problems/implement-strstr/

// 实现 strStr()
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnr003/
// https://leetcode-cn.com/problems/implement-strstr/

// MARK: 子串逐一比较

func strStr(_ haystack: String, _ needle: String) -> Int {
    guard !needle.isEmpty else {
        return 0
    }

    // 只处理 haystack 前面，完整遍历会越界
    for index in haystack.indices.dropLast(needle.count - 1) {
        // subscript[...] 转换为包含所有元素的 Substring
        if haystack[index ..< haystack.index(index, offsetBy: needle.count)] == needle[...] {
            return index.utf16Offset(in: haystack)
        }
    }

    return -1
}
