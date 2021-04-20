//
//  344-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/28.
//

// Reverse String
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/879/
// https://leetcode.com/problems/reverse-string/

// 反转字符串
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnhbqj/
// https://leetcode-cn.com/problems/reverse-string/

// MARK: Two Pointers, Iteration

func reverseString(_ s: inout [Character]) {
    // 扫描下标
    var leftIndex = s.startIndex
    var rightIndex = s.index(before: s.endIndex)

    // 最左最右交换，然后向内前进
    while leftIndex < rightIndex {
        s.swapAt(leftIndex, rightIndex)
        s.formIndex(after: &leftIndex)
        s.formIndex(before: &rightIndex)
    }
}
