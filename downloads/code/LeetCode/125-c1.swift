//
//  125-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/1.
//

// Valid Palindrome
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/883/
// https://leetcode.com/problems/valid-palindrome/

// 验证回文串
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xne8id/
// https://leetcode-cn.com/problems/valid-palindrome/

// MARK: 筛选 + 判断

func isPalindrome(_ s: String) -> Bool {
    let s = s.filter { $0.isNumber || $0.isLetter }.lowercased()
    return s == String(s.reversed())
}
