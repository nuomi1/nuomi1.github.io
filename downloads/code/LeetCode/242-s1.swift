//
//  242-s1.swift
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

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else {
        return false
    }

    let sCounts = s.reduce(into: [Character: Int]()) {
        $0[$1, default: 0] += 1
    }

    let tCounts = t.reduce(into: [Character: Int]()) {
        $0[$1, default: 0] += 1
    }

    return sCounts == tCounts
}
