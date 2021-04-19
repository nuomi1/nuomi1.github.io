//
//  118-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/2/1.
//

// Pascal's Triangle
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/601/
// https://leetcode.com/problems/pascals-triangle/

// 杨辉三角
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xncfnv/
// https://leetcode-cn.com/problems/pascals-triangle/

// MARK: Dynamic Programming

func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = Array(repeating: [], count: numRows)

    for i in 0 ..< numRows {
        for j in 0 ..< numRows {
            if j - i > 0 {
                continue
            }

            let lhs = result[safe: i - 1]?[safe: j - 1] ?? 0
            let rhs = result[safe: i - 1]?[safe: j] ?? 0

            result[i].append(max(lhs + rhs, 1))
        }
    }

    return result
}

extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
