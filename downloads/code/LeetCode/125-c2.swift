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

    var i = s.startIndex
    var j = s.index(before: s.endIndex)

    // i 下标从开到尾，j 下标从尾到头，直到 i 与 j 相遇
    while i < j {
        guard s[i].isNumber || s[i].isLetter else {
            s.formIndex(after: &i)
            continue
        }

        guard s[j].isNumber || s[j].isLetter else {
            s.formIndex(before: &j)
            continue
        }

        guard s[i].lowercased() == s[j].lowercased() else {
            return false
        }

        s.formIndex(after: &i)
        s.formIndex(before: &j)
    }

    return true
}
