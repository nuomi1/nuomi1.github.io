//
//  125-c2.swift
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

// MARK: 在原字符串上直接判断

func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty else {
        return true
    }

    var leftIndex = s.startIndex
    var rightIndex = s.index(before: s.endIndex)

    // leftIndex 下标从开到尾，rightIndex 下标从尾到头，直到 leftIndex 与 rightIndex 相遇
    while leftIndex < rightIndex {
        guard s[leftIndex].isNumber || s[leftIndex].isLetter else {
            s.formIndex(after: &leftIndex)
            continue
        }

        guard s[rightIndex].isNumber || s[rightIndex].isLetter else {
            s.formIndex(before: &rightIndex)
            continue
        }

        guard s[leftIndex].lowercased() == s[rightIndex].lowercased() else {
            return false
        }

        s.formIndex(after: &leftIndex)
        s.formIndex(before: &rightIndex)
    }

    return true
}
