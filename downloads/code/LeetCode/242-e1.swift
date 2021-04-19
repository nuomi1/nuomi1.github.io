//
//  242-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/31.
//

// Valid Anagram
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/882/
// https://leetcode.com/problems/valid-anagram/

// 有效的字母异位词
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn96us/
// https://leetcode-cn.com/problems/valid-anagram/

// MARK: Sorting

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else {
        return false
    }

    let s = s.sorted()
    let t = t.sorted()

    return s == t
}
