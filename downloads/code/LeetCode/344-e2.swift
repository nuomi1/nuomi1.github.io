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

func reverseString(_ s: String) -> String {
    // 字符串没有 swapAt 方法，转为数组
    var s = Array(s)

    // 扫描下标
    var i = s.startIndex
    var j = s.index(before: s.endIndex)

    // 最左最右交换，然后向内前进
    while i < j {
        s.swapAt(i, j)
        i += 1
        j -= 1
    }

    return String(s)
}
